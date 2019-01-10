## Trivia Back End Ruby/Rails

* Ruby version 2.5.1
* Rails version  5.2.1

* Install dependencies:
- `bundle install`

* Database creation
- `rails db:create`
* Database Migration
- `rails db:migrate`
* Database seed (if you want a few populated users)
- `rails db:seed`
* If you want to do it all in one.
- `rails db:create && rails db:migrate && rails db:seed`

* run server:
- `rails server` or `rails s`

* Make sure to also have the [Trivia Front End for React](https://github.com/nielschristiank/trivia-night-frontend)
* Make sure the port rails is running on matches the port for the Front End App.
* Ex: run rails server first on port 3000, or if you use a different port make sure to change it in the .env.development file in the [Trivia Front End for React](https://github.com/nielschristiank/trivia-night-frontend)
