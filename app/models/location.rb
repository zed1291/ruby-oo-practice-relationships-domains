class Location
    @@all = []
    attr_accessor :location
    def initialize location
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def all_clients
        Client.all.select {|client| client.location == self}
    end

    def self.least_clients
        min = 999
        least_clients = nil
        @@all.map do |location|
            if location.all_clients.size < min
                min = location.all_clients.size
                least_clients = location
            end   
        end
        least_clients
        # @@all.min_by do |location|
        #     location.size
        # end
    end

end