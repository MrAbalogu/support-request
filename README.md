Support-Requests
A cloud based Ruby on Rails app for customer support system

Requirements

Rails 
Ruby
react-rails

run the following commands to install components and gems
bundle install 
rails g react:install

This will:

create a components.js manifest file and a app/assets/javascripts/components/ directory, where you will put your components
place the following in your application.js:

//= require react
//= require react_ujs
//= require components

Usage

React.js builds

You can pick which React.js build (development, production, with or without add-ons) to serve in each environment by adding a config. Here are the defaults:

# config/environments/development.rb
MyApp::Application.configure do
  config.react.variant = :development
end

# config/environments/production.rb
MyApp::Application.configure do
  config.react.variant = :production
end
To include add-ons, use this config:

MyApp::Application.configure do
  config.react.addons = true # defaults to false
end
After restarting your Rails server, //= require react will provide the build of React.js which was specified by the configurations

here's a working demo: https://young-fortress-5170.herokuapp.com/posts