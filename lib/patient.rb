class Patient
  attr_accessor :name
  @@all = []
  def initialize
    @name = name
    Patient.all << self
  end
  def self.all
    @@all
  end
end
