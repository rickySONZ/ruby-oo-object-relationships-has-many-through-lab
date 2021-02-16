class Artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def new_song(name,  genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end


    




end
