require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# listing1 = Listing.new("Alki", "Seattle")
# listing2 = Listing.new("Theatre District", "Houston")
# guest1 = Guest.new("Zed")
# guest2 = Guest.new("Joshua")

# location1 = Location.new("Downtown")
# location2 = Location.new("Daly City")

# trainer1 = Trainer.new("Barbara")
# trainer2 = Trainer.new("Aaron")
# trainer3 = Trainer.new("Luke")

# client1 = Client.new("David")
# client2 = Client.new("Katie")
# client3 = Client.new("Davey")
# client4 = Client.new("Micah")
# client5 = Client.new("Nathan")
# client6 = Client.new("Zed")

# client1.assign_trainer(trainer1)
# client2.assign_trainer(trainer1)
# client3.assign_trainer(trainer2)
# client4.assign_trainer(trainer3)
# client5.assign_trainer(trainer3)
# client6.assign_trainer(trainer3)

# client1.assign_location(location1)
# client2.assign_location(location1)
# client3.assign_location(location1)
# client4.assign_location(location1)
# client5.assign_location(location2)
# client6.assign_location(location2)

# trainer1 = assign_location(location2)
# trainer1 = assign_location(location1)
# trainer1 = assign_location(location1)

# Location.least_clients

# character1 = Characters.new("Anna", "Kristen Bell", "Movie", "Frozen")
# character2 = Characters.new("Elsa", "Idina Menzel", "Movie", "Frozen")
# character3 = Characters.new("Kristoff", "Jonathan Groff", "Movie", "Frozen")
# character4 = Characters.new("Olaf", "Josh Gad", "Movie", "Frozen")

# character5 = Characters.new("Veronica", "Kristen Bell", "Movie", "Veronica Mars")
# character6 = Characters.new("Logan", "Jason Dohring", "Movie", "Veronica Mars")
# character7 = Characters.new("Keith", "Enrico Colantoni", "Movie", "Veronica Mars")

# character8 = Characters.new("Mr. Snow", "Josh Gad", "TV Show", "Zed's Show")
# character9 = Characters.new("Zederoni & Cheese", "Zed", "TV Show", "Zed's Show")
# character10 = Characters.new("Zederoni & Cheese", "Zed", "TV Show", "Frozen")

# movie1 = Movies.new("Frozen")
# movie2 = Movies.new("Veronica Mars")
# show1 = Shows.new("Zed's Show")
# show2 = Shows.new("Frozen")

# actor1 = Actors.new("Kristen Bell")
# actor2 = Actors.new("Idina Menzel")
# actor3 = Actors.new("Jonathan Groff")
# actor4 = Actors.new("Josh Gad")
# actor5 = Actors.new("Jason Dohring")
# actor6 = Actors.new("Enrico Colantoni")
# actor7 = Actors.new("Zed")

# driver1 = Driver.new("Nathan")
# driver2 = Driver.new("Davey")

# passenger1 = Passenger.new("Zed")
# passenger2 = Passenger.new("Luke")
# passenger3 = Passenger.new("Aaron")
# passenger4 = Passenger.new("Micah")


ride1 = Ride.new(driver1, [passenger1, passenger2], 5)
ride2 = Ride.new(driver1, [passenger2], 4)
ride3 = Ride.new(driver2, [passenger1, passenger3, passenger4], 2.5)
ride4 = Ride.new(driver1,[passenger4], 98)



binding.pry
return "c'est fin"
