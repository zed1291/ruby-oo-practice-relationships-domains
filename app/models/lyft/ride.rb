class Ride
    @@all = []
    attr_reader :driver, :passengers, :miles
    def initialize driver, passengers, miles
        @driver = driver
        @passengers = passengers
        @miles = miles.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        Ride.all.sum {|ride| ride.miles} / Ride.all.count
    end

end