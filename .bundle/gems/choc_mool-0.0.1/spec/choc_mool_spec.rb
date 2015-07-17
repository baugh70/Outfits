require 'spec_helper'

describe ChocMool do
  describe '#fetch' do
    it 'returns the value for the key provided' do
      hash = {one: 1}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one) ).to eq 1
    end

    it 'returns nil when the key cannot be found' do
      hash = {}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one) ).to be_nil
    end

    it 'traverses multiple levels to get the value' do
      hash = {one: {two: {three: 3}}}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one, :two, :three) ).to eq 3
    end

    it 'returns nil when any level cannot be found' do
      hash = {one: {two: {three: {four: 4}}}}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one, :too, :three) ).to be_nil
    end

    it 'returns nil when the starting value is nil' do
      hash = nil
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one) ).to be_nil
    end

    it 'returns a stripped result' do
      hash = {one: ' one '}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one) ).to eq 'one'
    end

    it "returns the value for the key provided, even when using string keys" do
      hash = {:one => 1}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch('one') ).to eq 1
    end

    it "returns the value for the key provided, even when using symbol keys" do
      hash = {'one' => 1}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one) ).to eq 1
    end

    it "traverses multiple levels using dot syntax" do
      hash = {:one => {:two => {:three => 3}}}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch('one.two.three') ).to eq 3
    end

    it "traverses multiple levels using mixed dot syntax" do
      hash = {:one => {:two => {:three => 3}}}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.fetch(:one, 'two.three') ).to eq 3
    end

    context 'when the data is accessed via an attribute' do
      it 'returns the value of the key' do
        hash = {one: {'@two' => 2}}
        choc_mool = ChocMool.new(hash)
        expect( choc_mool.fetch(:one, '@two') ).to eq 2
      end

      it 'returns the value accessed via :attributes' do
        class StringWithAttributes < String
          attr_accessor :attributes
        end
        value_with_attributes = StringWithAttributes.new('one')
        value_with_attributes.attributes = {'two' => 2}
        hash = {one: value_with_attributes}
        choc_mool = ChocMool.new(hash)
        expect( choc_mool.fetch(:one, '@two') ).to eq 2
      end
    end

    context 'when the data is accessed via an index' do
      it 'returns the value at that index' do
        hash = {one: [2]}
        choc_mool = ChocMool.new(hash)
        expect( choc_mool.fetch(:one, 0) ).to eq 2
      end
    end
  end

  describe '#fetch_each' do
    it 'returns an instance for each result found at the key' do
      hash = {one: [{two: 2}, {two: 2}]}
      choc_mool = ChocMool.new(hash)

      expect { |b|
        choc_mool.fetch_each(:one, &b)
      }.to yield_successive_args(ChocMool, ChocMool)
    end

    it 'returns an instance for each result found at the key' do
      hash = {one: [{two: 2}, {two: 2}]}
      choc_mool = ChocMool.new(hash)

      choc_mool.fetch_each(:one) do |value|
        expect( value.fetch(:two) ).to eq 2
      end
    end

    it 'raises an error when result is not an array' do
      hash = {one: 1}
      choc_mool = ChocMool.new(hash)

      expect {
        choc_mool.fetch_each(:one){ |p| nil }
      }.to raise_error(NoMethodError)
    end
  end

  describe '#fetch_each_with_index' do
    it 'returns an instance for each result found at the key' do
      hash = {one: [{two: 2}, {two: 2}]}
      choc_mool = ChocMool.new(hash)

      i = 0
      choc_mool.fetch_each_with_index(:one) do |value, index|
        expect( value.fetch(:two) ).to eq 2
        expect( index ).to eq i
        i += 1
      end
    end

    it 'raises an error when result is not an array' do
      hash = {one: 1}
      choc_mool = ChocMool.new(hash)

      expect {
        choc_mool.fetch_each_with_index(:one){ |p| nil }
      }.to raise_error(NoMethodError)
    end
  end

  describe '#using' do
    it 'applies the regex to the fetched result' do
      hash = {one: 'two, three'}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.using(/^(.*),/).fetch(:one) ).to eq 'two'
    end

    it 'does nothing if valid regex does not exist' do
      hash = {one: 'two, three'}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.using(:invalid_regex).fetch(:one) ).to eq 'two, three'
    end

    it 'does nothing if regex does not capture proper result' do
      hash = {one: 'two, three'}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.using(/^.*,.*$/).fetch(:one) ).to eq 'two, three'
    end

    it 'forgets the regex' do
      hash = {one: 'two, three'}
      choc_mool = ChocMool.new(hash)
      expect( choc_mool.using(/^(.*),/).fetch(:one) ).to eq 'two'
      expect( choc_mool.fetch(:one) ).to eq 'two, three'
    end
  end
end
