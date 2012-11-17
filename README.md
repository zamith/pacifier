# Pacifier

Pacifier catches all server errors and instead of showing the standard 500.html page it redirects the user to the root_path, adding a nice message to the flash and logging what happened.

### Future Work

* Configurable attributes such as the path of redirection, the message to show the user, etc...
* Sending an email to the dev and/or support team

## Installation

Add this line to your application's Gemfile:

    gem 'pacifier'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pacifier

## Usage

Simply `include Pacifier` in ApplicationController (or any other controller you want).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
