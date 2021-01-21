class Passenger
    @@all = []
    attr_reader :name
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passengers.any?(self)}
    end

    def drivers
        self.rides.map {|ride| ride.driver}.uniq
    end

    def distance
        self.rides.sum {|ride| ride.miles}
    end

    def self.premuim_members
        Passenger.all.find_all {|passenger| passenger.distance > 100}
    end

end