# define_private

define_private is a ruby library that provides an alternative private method definition syntax like Elixir.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'define_private'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install define_private

## Usage

```ruby
require 'define_private'

class YourClass
  include DefinePrivate

  def xxx(a, b)
    do_xxx1(a, a) * do_xxx2(b, b)
  end

  # you can use define_private to define private method
  define_private :do_xxx1 do |a, b|
    a + b
  end

  # you can also use defp
  defp :do_xxx2 do |a, b|
    a + b
  end
end
```

```ruby
pry(main)> YourClass.new.xxx(1, 2)
=> 8

pry(main)> YourClass.new.do_xxx1(1, 2)
NoMethodError: private method `do_xxx1' called for #<YourClass:0x000000021f1a38>

pry(main)> YourClass.new.do_xxx2(1, 2)
NoMethodError: private method `do_xxx2' called for #<YourClass:0x00000001bb2938>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/buzztaiki/define_private.

## Licence

MIT
