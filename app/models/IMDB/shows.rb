class Shows
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Characters.all.select do |movie|
            if movie.movie == self.name
                return "There is a movie, #{self.name}, that has the same name as that show. Exciting!"
            end
            return "Sorry, there aren't any movies with the same name as this show"
        end
    end
end