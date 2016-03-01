# Thoughtbox

[Live App](https://thoughtcentral.herokuapp.com/)

## Description

The `thoughtbox` app allows users to create, update, and delete links. The app was build as a practice assessment in Module 4 at the Turing School.

## Installation

Clone repository and install dependencies:

```
$ git clone git@github.com:acareaga/thoughtbox.git
$ cd thoughtbox
$ bundle exec install
```

## Usage

To build the database:

```
rake db:create db:setup
```

Fire up a development server:

```
rails s
```

To run tests:

```
rake
```

## Dependencies

Uses with the following versions:

```
gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'therubyracer'
gem 'responders', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'
```

## Contributing

To submit patches:
* Fork this repository
* Implement the desired feature with tests (and documentation if necessary)
* Submit a pull request

## License

The `thoughtbox` codebase is released under the [MIT license](https://opensource.org/licenses/MIT).
