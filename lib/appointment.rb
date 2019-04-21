class Appointment
  attr_accessor :name
  @@all = []

  def initialize(name, date, doctor)
    @name = name
    @date = date
    @doctor = doctor
  end

  def self.all
    @@all
  end

end
