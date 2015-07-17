require_relative 'choc_mool/version'

class ChocMool
  attr_reader :hash, :regex

  def initialize(hash)
    @hash = hash
  end

  def using(regex)
    @regex = regex
    self
  end

  def fetch(*paths)
    paths = _expand(paths)

    if hash
      result = fetch_value_or_attribute(paths)
    else
      result = nil
    end

    result = _apply_regex(result)
    result = _cleanup(result)

    result
  end

  def each(*paths, &block)
    path = fetch(*paths)
    if path
      path.each do |result|
        result_payload = ChocMool.new(result)
        block.call(result_payload)
      end
    end
  end

  def each_with_index(*paths, &block)
    fetch(*paths).each_with_index do |result, index|
      result_payload = ChocMool.new(result)
      block.call(result_payload, index)
    end
  end

  def fetch_each(*paths, &block)
    each(*paths, &block)
  end

  def fetch_each_with_index(*paths, &block)
    each_with_index(*paths, &block)
  end

  private

  def _expand(paths)
    paths.map do |path|
      if path.respond_to?(:split)
        path.split('.')
      else
        path
      end
    end.flatten
  end

  def fetch_value_or_attribute(paths)
    result = paths.inject(hash) do |result, path|
      fetch_value(result, path) || fetch_attribute(result, path) || break
    end
  end

  def fetch_value(result, path)
    if result.respond_to? :fetch
      fetch_native(result, path) || fetch_symbol(result, path) || fetch_string(result, path)
    end
  end

  def fetch_native(result, path)
    result.fetch(path, nil)
  end

  def fetch_symbol(result, path)
    result.fetch(path.to_sym, nil) if path.respond_to?(:to_sym)
  end

  def fetch_string(result, path)
    result.fetch(path.to_s, nil) if path.respond_to?(:to_s)
  end

  def fetch_attribute(result, path)
    if path.to_s.start_with?('@') && result.respond_to?(:attributes)
      result.attributes.fetch(path.slice(1..-1))
    end
  end

  def _apply_regex(result)
    if @regex && @regex.is_a?(Regexp) && matched = result.to_s.match(@regex)
      result = matched[1] if matched[1]
    end
    @regex = nil
    result
  end

  def _cleanup(result)
    result.respond_to?(:strip) ? result.strip : result
  end
end
