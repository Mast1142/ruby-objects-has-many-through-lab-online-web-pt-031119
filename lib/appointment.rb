class Appointment
  attr_accessor :date, :doctor, :patient, :name
  @@all = []

  def initialize(date, doctor, patient)
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
