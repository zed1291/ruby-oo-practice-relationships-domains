class Client
    @@all = []
    attr_accessor :name, :trainer, :location
    def initialize name
        @name = name
        @@all << self
    end

    def assign_trainer trainer
        self.trainer = trainer
    end

    def assign_location location
        self.location = location
    end

    def self.all
        @@all
    end
end