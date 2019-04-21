class Artist
  attr_accessor :name, :artist, :genre
  attr_reader
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, artist, genre)
  end

  def songs
    Songs.all.select do |x|
      songs.artist == self
    end
  end

  def genres
    Songs.map do |x|
      x.genres
    end
  end
end
