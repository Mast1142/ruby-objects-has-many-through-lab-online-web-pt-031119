class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def self.all
    @@all
  end

  def appointments
  end

  def doctors
  end

end
