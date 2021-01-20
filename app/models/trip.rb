class Trip
    attr_reader :guest, :listing
    @@all = []
    def initialize guest, listing
        @guest = guest
        @listing = listing
    end

end