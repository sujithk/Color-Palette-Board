=> Project Overview

  simple server & frontend presenting a user with a 20x20 grid of squares the user can "draw" on to create a simple design.

 - Login not needed to access the App.
 - For each user a time based User name is randomly generated.
 - A single board for all users (20x20 grid of squares).
 - User should have a palette of colors.
 - User can select the square in which the user can select color.
 - Any user can Update the previously colored square (User independent) in realtime using websockets.
 - Users favorite color & details will list in Dashboard.
 - Appropriate testing should be in place.

* Ruby version => ruby-2.4.2

* Rails version => Rails 5.1.4

* Color Palette => jquery-minicolors-rails

* Testing Framework => Rspec

* Database  => psql


=> Test Env Run
 - bundle exec rspec

=> Production Env Run

1.rake db:create
2.rake db:migrate
3.rails s
