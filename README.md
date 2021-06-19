# Cars inventory excercise

## Pre-requisites
```
  Ruby 3.0.0
  Rails 6.1.3
  Yarn 1.22.5
  Node 16.0.0
```

## Setup
 - Clone the project
 - Access the repo folder
 - Run `bundle install`
 - Run `yarn install`
 - Run `rails db:setup`
 - A predefined admin user is created with the following data
    ```
    Email: admin@mail.com
    password: admin123
    ```

## Running test
to run all the tests:
```
bundle exec rspec spec/
```

After running the test you can see the coverage by typing this:
```
open coverage/index.html
```
## References
Gems used in this project
- [devise](https://github.com/heartcombo/devise)
- [whenever](https://github.com/javan/whenever)
- [Rspec-rails](https://github.com/rspec/rspec-rails)
- [Factory bot](https://github.com/thoughtbot/factory_bot)
- [Simplecov](https://github.com/simplecov-ruby/simplecov)