class Patient
  attr_accessor :name, :date, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |x|
      x.patient == self
    end
  end

  def doctors
    Appointment.all.map do |x|
      x.doctor
    end
  end

end
