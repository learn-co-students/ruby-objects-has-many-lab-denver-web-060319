class Author

    attr_accessor :name
    attr_reader :posts

    def initialize name
        @name = name
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
      end
end