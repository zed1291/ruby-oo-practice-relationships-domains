class Driver
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
        Ride.all.select {|ride| ride.driver == (self)}
    end

    def passengers
        self.rides.find_all {|ride| ride.passengers}.map {|ride| ride.passengers}.flatten.uniq
    end

    def distance
        self.rides.sum {|ride| ride.miles}
    end

    def self.distance_cap
        Driver.all.select {|driver| driver.distance > 100}
    end

end