require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# listing1 = Listing.new("Alki", "Seattle")
# listing2 = Listing.new("Theatre District", "Houston")
# guest1 = Guest.new("Zed")
# guest2 = Guest.new("Joshua")

location1 = Location.new("Downtown")
location2 = Location.new("Daly City")

trainer1 = Trainer.new("Barbara")
trainer2 = Trainer.new("Aaron")
trainer3 = Trainer.new("Luke")

client1 = Client.new("David")
client2 = Client.new("Katie")
client3 = Client.new("Davey")
client4 = Client.new("Micah")
client5 = Client.new("Nathan")
client6 = Client.new("Zed")

client1.assign_trainer(trainer1)
client2.assign_trainer(trainer1)
client3.assign_trainer(trainer2)
client4.assign_trainer(trainer3)
client5.assign_trainer(trainer3)
client6.assign_trainer(trainer3)

client1.assign_location(location1)
client2.assign_location(location1)
client3.assign_location(location1)
client4.assign_location(location1)
client5.assign_location(location2)
client6.assign_location(location2)

# trainer1 = assign_location("Daly City")
# trainer1 = assign_location("Downtown")
# trainer1 = assign_location("Downtown")

# Location.least_clients


binding.pry
return "fin"
