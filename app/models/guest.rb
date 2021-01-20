class Guest
    @@all = []
    attr_reader :name
    def initialize name
        @name = name
        Guest.all << self
    end

    def listings
        Listing.all.select {|trip| trip.guest == self}.map {|trip| trip.lisitng}
    end

    def trips
        Listing.all.select {|trip| trip.guest == self}#.map {|trip| trip.trip}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        Guest.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_by_name name
        Guest.all.select {|guest| guest.name == name}
    end

end