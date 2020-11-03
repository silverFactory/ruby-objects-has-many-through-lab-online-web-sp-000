class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    Doctor.all << self
  end
end
