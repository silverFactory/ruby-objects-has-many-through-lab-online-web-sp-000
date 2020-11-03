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
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  def appointments
    Appointment.all{|a| a.patient == self}
  end
end
