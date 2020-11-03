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
end
