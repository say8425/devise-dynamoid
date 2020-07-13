# Devise Dynamoid

Devise only support [couple of ORM](https://github.com/heartcombo/devise#other-orms), ActiveRecord (default) and Mongoid. 
This gem make support Dynamoid ORM for Devise.  

## Install Devise Gem

First of all, you should install [Devise](https://github.com/heartcombo/devise) gem and run devise install generator command.
Please read [Getting Started](https://github.com/heartcombo/devise#getting-started) section from Devise.

## Installation
 
Add 'devise-dynamoid' to your application's Gemfile:

```ruby
gem 'devise'
gem 'devise-dynamoid'
```

Execute bundler:

```shell script
$ bundle
```

Load and configure dynamoid for your devise ORM.
You can find this **ORM configuration** at `config/initializers/devise.rb:35` 

```ruby
# ==> ORM configuration
# Load and configure the ORM. Supports :active_record (default) and
# :mongoid (bson_ext recommended) by default. Other ORMs may be
# available as additional gems.
require 'devise/orm/dynamoid'
```

## Usage

Run devise model generator.

```shell script
$ rails generate dynamoid:devise MODEL
```

## Contributing

Bug reports and pull requests are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
