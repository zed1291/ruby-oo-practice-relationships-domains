class Actors
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_characters
        Characters.all.select {|character| character.actor == self.name}
    end

    def self.most_characters
        #bug- if multiple actors have the same number of characters, the first is selected
        Actors.all.max_by {|character| character.all_characters.count}
    end


end