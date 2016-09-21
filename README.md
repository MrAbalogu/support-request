# Support-Requests
A cloud based Ruby on Rails app for customer support system

working example [https://request-support.herokuapp.com/](https://request-support.herokuapp.com/)

## Requirements

- Rails 
- Ruby
- react-rails

run the following commands to install components and gems
bundle install 
rails g react:install

## Installation

Add `react-rails` to your gemfile:

```ruby
gem 'react-rails'
```

And install:

```
bundle install
```

Next, run the installation script:

```bash
rails g react:install
```

This will:
- create a `components.js` manifest file and a `app/assets/javascripts/components/` directory,
where you will put your components
- place the following in your `application.js`:

  ```js
  //= require react
  //= require react_ujs
  //= require components
  ```

## Usage

### React.js builds

You can pick which React.js build (development, production, with or without [add-ons]((http://facebook.github.io/react/docs/addons.html)))
to serve in each environment by adding a config. Here are the defaults:

```ruby
# config/environments/development.rb
MyApp::Application.configure do
  config.react.variant = :development
end

# config/environments/production.rb
MyApp::Application.configure do
  config.react.variant = :production
end
```

To include add-ons, use this config:

```ruby
MyApp::Application.configure do
  config.react.addons = true # defaults to false
end
```