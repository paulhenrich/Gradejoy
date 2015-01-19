#Gradejoy

[![Build Status](https://travis-ci.org/robertlandreaux/Gradejoy.png)](https://travis-ci.org/robertlandreaux/Gradejoy)

Gradejoy is an online gradebook application for students and teachers.

Rails version 4.0.2.

Ruby version 2.1.3.

Visit http://gradejoy.com.

This project is still in progess; not every feature works yet.

To run this locally, you need to have Ruby version 2.1.3 and Rails version 4.0.2 installed.
This application uses PostgreSQL in all environments. You may change that in config/database.yml.
Rename config/application.yml.example to config/application.yml. That file will set random environment variables for you.
The application will not send mail in development mode. Run `rake db:setup` in your command line. Run `rails s` in your command line. The application should run at localhost:3000
in your browser.

Email any questions, comments, or criticisms to robertlandreaux@gmail.com.
Feel free to contribute to this project! The Github Issues (scroll to top and look right) contains tasks that need work.
