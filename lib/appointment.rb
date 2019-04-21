class Appointment
  attr_accessor :name, :date, :doctor, :patient
  @@all = []

  def initialize(name, date, doctor, patient)
    @name = name
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
