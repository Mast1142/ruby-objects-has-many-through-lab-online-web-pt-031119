class Genre
  attr_accessor :genre, :name, :songs, :artists
  @@all = []

  def initialize(genre)
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
