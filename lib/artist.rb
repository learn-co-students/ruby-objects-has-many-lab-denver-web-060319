require "pry"

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def self.song_count
    Artist.all.map{|artist| artist.songs.length}.inject {|sum, num| sum + num}
  end

end
