class Genre
  attr_accessor
  @@all = []
  def initialize(name)
    @name = name
    self.all << self
  end
  def self.all
    @@all
  end
  def songs(genre)
    Genre.all.select{|s| s.genre == genre}
  end
end
