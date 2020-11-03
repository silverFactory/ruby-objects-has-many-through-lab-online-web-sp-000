class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    Genre.all << self
  end
  def self.all
    @@all
  end
  def songs
    Songs.all.select{|s| s.genre.name == self.name}
  end
  def artists
  #  self.songs.map{|s| s.artist}
  end
end
