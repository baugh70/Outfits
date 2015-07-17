# ChocMool

Wraps a hash, allowing easy access to deeply nested values.

## Installation

```ruby
gem 'choc_mool'
```

## Usage

```ruby
hash = {one: {two: {three: :four}}}
data = ChocMool.new(hash)

data.fetch(:one, :two, :three)
# => :four
```

#### using a regex

```ruby
hash = {one: 'two, three'}
data = ChocMool.new(hash)

data.using(/^(.*),/).fetch(:one)
# => 'two'
```

#### using dot notation

```ruby
hash = {one: {two: {three: :four}}}
data = ChocMool.new(hash)

data.fetch('one.two.three')
# => :four

data.fetch(:one, 'two.three')
# => :four
```

#### accessing attributes

A common use for ChocMool is to easily access deeply nested data returned from APIs.
The API data is converted to hash from XML or JSON then wrapped by ChocMool.

XML cannot be represented directly by a hash, thus libraries that convert
the XML -> hash can expose this data.

ChocMool supports accessing these values when they are accessed via
`#attributes` on the corresponding key (as provided by [Nori](https://github.com/savonrb/nori)).

```ruby
xml = "<one two='three'>four</one>"
hash = Nori.new.parse(xml)
data = ChocMool.new(hash)

data.fetch(:one, '@two')
# => 'three'

data.fetch(:one)
# => 'four'
```

#### accessing arrays

```ruby
hash = {one: [:two, :three]}
data = ChocMool.new(hash)

data.fetch(:one, 1)
# => :three

data.fetch_each(:one) { |value| puts value }
# => :two
# => :three

data.fetch_each_with_index(:one) { |value, index| puts "#{index}: #{value}" }
# => 0: :two
# => 1: :three
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
