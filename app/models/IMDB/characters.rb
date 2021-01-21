class Characters
    @@all = []
    attr_accessor :name, :actor, :movie, :show
    def initialize name, actor, media_kind, media_name
        @name = name
        @actor = actor
        if media_kind == "Movie"
            @movie = media_name
        else
            @show = media_name
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        character = Characters.all.max_by {|character| character.name}
        "#{character.name} is in the most reoccuring character accross all movies and shows."
    end

end