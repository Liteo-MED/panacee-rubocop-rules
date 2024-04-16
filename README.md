# Panacee::Rubocop::Rules

Shared Rubocop configuration accross Panacée Rails projects.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'panacee-rubocop-rules', github: 'Liteo-Med/panacee-rubocop-rules'
end
```

And remove already existing declaration of `rubocop` gems in the file (see Dependencies section
for already loaded gems).

You can then execute:

```bash
$ bundle install
```

## Usage

Add this line to your application's `.rubocop.yml`:

```yml
inherit_gem:
  panacee-rubocop-rules: .rubocop.yml
```

## Dependencies

The gems has directly a dependency on `rubocop` core and its more famous extensions:

- [rubocop](https://github.com/rubocop/rubocop)
- [rubocop-performance](https://github.com/rubocop/rubocop-performance)
- [rubocop-rails](https://github.com/rubocop/rubocop-rails)
- [rubocop-rake](https://github.com/rubocop/rubocop-rake)
- [rubocop-rspec](https://github.com/rubocop/rubocop-rspec)

A default configuration is present and has been adapted over the years for the best Panacée experience possible.


## Contributing

Bug reports and pull requests are welcome on Github at https://github.com/Liteo-Med/panacee-rubocop-rules.
