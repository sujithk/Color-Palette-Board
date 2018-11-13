Project Details

  simple server & frontend presenting a user with a 20x20 grid of squares the user can "draw" on to create a simple design.

* Ruby version => ruby-2.4.2

* Rails version => Rails 5.1.4

* Database  => psql

Requirements

* All users should be presented with a shared board.
* Each user should have a palette of colors to choose from Clicking on a square, colors the square in with the user's currently selected color.
* A visitor can overwrite the color of a previously-colored square (set by a different visitor or themselves).
* Each visitor to the site should be assigned a randomly generated username (there does not need to be any login or authentication), which should be  shown to that visitor.
* Hovering over a colored in square should display in some way which user placed that color, and when it was placed.
* The board should intermittently update to reflect any changes other users have made
