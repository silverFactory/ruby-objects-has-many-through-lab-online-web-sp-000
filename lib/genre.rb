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
    Genre.all.select{|g| g.name == self}
  end
  def artists
    self.songs.map{|s| s.artist}
  end
end
