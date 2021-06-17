# FAFSA Helper
## Facilitating the process of filing the Free Application for Federal Student Aid.

### Purpose

The purpose of this app was to showcase my abilities as a newly-minted web developer. To do this, I was tasked to improved the Free Application for Federal Student Aid.

After identifying the problems, I decided to create an app that would allow for improved coordination between students and their parents or students and their spouses and would provide more feedback and resources.

I created several models, a user friendly interface, and used browser automation to streamline the application process to the FAFSA demo site.

### System Info

I run my machine on Mint, the following commands work for my terminal. Your commands may vary based on your operating system.


* Ruby version 2.7.0
    `ruby -v`

* Rails 6.1.3.2
    `rails -v`

* PostgresQL  1.1
    `psql -V`

    * it is much easier to use postgresQL as the database for rails, if you do so while creating the rails app itself, as opposed to adding it post-creation.

        * `rails new myapp --database=postgresql`
        * `cd myapp`
        * `bundle lock --add-platform x86_64-linux --add-platform ruby`
        * `bin/rails db:create`

    * This is a good guide to adding postgressql initially as well as retroactively.
        * https://devcenter.heroku.com/articles/getting-started-with-rails6

* Heroku 7.52.0
    `heroku -v`
    * requires rails 6.0 onwards

Gems needed
* devise 4.8.0
    requires Rails 4.1 onwards
    https://github.com/heartcombo/devise
    `gem devise`
    `bundle install`
    `rails generate devise:install`
* watir (6.19.1)
    * requires Ruby 2.5.0
    * selenium-webdriver >= 4.0.0.beta2
    * http://watir.com/
    `gem install watir`
    `bundle install`


### Cloning this Repo

* Navigate to the directory (or folder) you'd like to clone the repo into

`cd dir`

* Then use git and the repo url to clone it. 

`git clone https://github.com/ValerieChiquinquira/fafsa-helper.git`

* Then cd to the repo folder

` cd fafsa-helper`

* To open project from CLI with VScode
    ` code .`

* And then to use the live rails server
    `rails s`

    * go to browser and go to localhost:3000 in the url

    or

    * ctrl and click the link that appears in terminal after running that command.



### Current State of the App

* Users create accounts with their personal information. 
    * This info is considered to be their profile details but it will also be used to populate their FAFSA answers
* Users then answer questions which record in the fafsa_app model.
* When users submit their applications, the app connects to a demo FAFSA site and automates the creation of an account and their application.  


### Future of the App

I ran into some issues with the automation portion of the app. That is, there were some elements that simply could not be found by watir and therefore stalled the process. Because of this the following must be done:

    * Create a catch all for when the automation runs into an problem. 
    * Add more robust control logic in the automation commands.
    * Create another set of commands for the parents to include their information.

Aside from the automation issues, I left much to be done concerning the models. There should be another model created for the parents of the users. The associations should/could has_many_through.

I would like to make more improvements in the user interface, specifically making the forms more appealing and user friendly. 

#### If you are interested in collaborating, please reach out.


