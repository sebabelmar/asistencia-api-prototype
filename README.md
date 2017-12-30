# ASISTENCIA API
Prototype API to implement authentication using JWT manually before using library.
Check if Single Table Inheritance works well with the schema in mind.
Using full Rails on this example.

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

- FROM POSTMAN
  - BCrypt can create an account as a teacher with code
  - can login as teacher
  - can create schools/classes
  - classes can create students
  - can take assistance from a list of class/students

## TODO
- X create users
- X authenticate users via API JWT
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


### bycript
- user model has password_digest
