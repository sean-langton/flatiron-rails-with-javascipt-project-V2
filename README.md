# README
Fantasy Fleets is parody of Fantasy Football where instead of teams and players there's fleets and boats.

# Installation

First, install the gems required by the application

  bundle install

Then, execute the database migrations/schema setup:

  rake db:setup

To being the app, launch the server:

  rails s

You will be able to reach the app at [http://localhost:3000](http://localhost:3000)

#Usage

  All Fleets must belong to a league. Leagues are where 1-12 fleets compete to score the most most.
  Fleets consist of up to 6 different ships, 1 per class of boat.
  Ships can only be added to one fleet in league.
  Points are scored via voyages, where distance * cargo / 1000 = points.

## License

This software is available as open source under the terms of the MIT License.
