  ## Models
- user
  - teacher
  - admin
  - parent
  - child
- school
- class
- attendance: student_id school_id date time
- teacher codes

## Features
- API
  - JWT to authenticate
  - has to be authenticated as a teacher to take assistance and create class/parents/child
  - can create schools
  - can create classes
  - can create list of parents
  - can create list of children
  - can take attendance on a children

- FROM
  - BCrypt can create an account as a teacher with code
  - can login as teacher
  - can create schools/classes
  - classes can create students
  - can take assistance from a list of class/students

## TODO
- create users
- authenticate users via API JWT
- create reference teacher/children parent/children

## Rails set up
New rails project no test:
`rails new <name> -T`

## Gems
### rspec
- gem `gem 'rspec-rails', '~> 3.7', '>= 3.7.1'`
- `rails generate rspec:install`

## factory bot
- `gem 'factory_bot_rails'`
- spec/rails_helper `config.include FactoryBot::Syntax::Methods`
- spec/factory/model.rb
- [example](https://github.com/rweng/pry-rails)
- test in `rails c -e test`

## capybara
- `gem 'capybara'`
- on rspec helper `require 'capybara/rails'`
- mkdir spec/features
- include in rails helper if using Devise
    ```
    include Warden::Test::Helpers
    Warden.test_mode!
    ```
### bootstrap:
- gem `'bootstrap-sass', '~> 3.3.7'` (make sure rails-sass is present)
- updates application.scss and include
  - `@import "bootstrap-sprockets";`
  - `@import "bootstrap";`
- udate application.js and import bt
  - `//= require bootstrap-sprockets`
- [Layout examples](http://www.layoutit.com/build)

### bycript
- user model has password digest
- user controller new create strong params
- user model has_secured_password
- signin/ signout : create session[:user_id]
- current_user in app controller as helper_method :current_user
