class Genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def songs
        Song.all.select {|songs| songs.genre == self}
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end

end
