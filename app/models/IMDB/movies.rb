class Movies
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @@all << self
    end

    def all_characters
        Characters.all.select {|character| character.movie == self.name}
    end

    def self.most_actors
        #assuming that in each movie, actors only play one character
        #bug- if multiple movies have the same number of actors, the first is selected
        Movies.all.max_by {|movie| movie.all_characters.count}
    end

    def self.all
        @@all
    end

end