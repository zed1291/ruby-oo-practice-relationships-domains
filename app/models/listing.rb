class Listing
    attr_reader :city
    @@all = []
    def initialize name, city
        @name = name
        @city = city
        @@all << self
    end

    def guests
        results = Array.new
        Trip.all.map do |trip|
            if trip.listing == self
                results << trip.guest
            end
        end
        results
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end 

    def self.find_by_city city
       Listing.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        Listing.all.trip_count
    end

end