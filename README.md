# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


### Command Line Log
```
rails new rails-template-with-auth
cd rails-template-with-auth
bundle install
rails g model User
bundle exec rake db:migrate
rails g controller Users
rails g controller Sessions
```