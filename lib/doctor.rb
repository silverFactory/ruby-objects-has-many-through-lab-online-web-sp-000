class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    Doctor.all << self
  end
  def self.all
    @@all
  end
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  def appointments
    Appointment.all.select{|a| a.doctor == self}
  end
end
