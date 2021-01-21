class Trainer
    @@all = []
    attr_reader :name, :location
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_clients
        Client.all.select {|client| client.trainer == self}
    end

    def self.most_clients
        Trainer.all.min_by {|trainer| trainer.all_clients.count}
        # max = 0
        # most_clients = nil
        # @@all.map do |trainer|
        #     if trainer.all_clients.size < max
        #         max = trainer.all_clients.size
        #         most_clients = trainer
        #     end   
        # end
        # most_clients
    end

end