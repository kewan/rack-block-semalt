# Rack Block Semalt

The semalt.com crawler is a bit shady and, if nothing else, pollutes your logs
with hits and doesn't respect robots.txt. This gem makes it simple to block
semalt.com's crawler.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-block-semalt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-block-semalt

## Usage

Simply add these two lines of code to your `config.ru` file:

    require 'rack-block-semalt'
    use Rack::BlockSemalt

## Contributing

1. [Fork it](http://github.com/<my-github-username>/rack-block-semalt/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request
