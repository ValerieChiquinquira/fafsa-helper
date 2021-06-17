# FAFSA Helper
## Facilitating the process of filing the Free Application for Federal Student Aid.

_ _ _

### Purpose

The purpose of this app was to showcase my abilities as a newly-minted web developer. To this, I was tasked to improved the Free Application for Federal Student Aid.

After identifying the problems, I decided to create an app that would allow for coordination between students and their parents or students and their spouses, that would provide more feedback and more resources.

I run my machine on Mint, the following commands work for my terminal. Your commands may vary based on your operating system.


* Ruby version '2.7.0'
    ruby -v

* Rails 6.1.3.2'
    rails -v
* PostgresQL '~> 1.1'
    psql -V

    * it is much easier to use postgresQL as the database for rails, if you do so while creating the rails app itself, as opposed to adding it post-creation.

rails new myapp --database=postgresql

cd myapp
bundle lock --add-platform x86_64-linux --add-platform ruby
$ bin/rails db:create

This is a good guide to adding postgressql initially as well as retroactively.
https://devcenter.heroku.com/articles/getting-started-with-rails6

* Heroku 7.52.0
    heroku -v
    requires rails 6.00 onwards


Gems needed
* devise 4.8.0
    requires Rails 4.1 onwards
    https://github.com/heartcombo/devise
    `gem 'devise'`
    `bundle install`
    `rails generate devise:install`
* watir (6.19.1)

    requires Ruby 2.5.0
    selenium-webdriver >= 4.0.0.beta2
    http://watir.com/
    `gem install watir`
    `bundel install`



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