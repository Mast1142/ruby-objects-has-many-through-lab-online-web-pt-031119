class Doctor
  attr_accessor :name, :date
  @@all = []

  def initialize(name)
    @name  = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(name, date, self)
  end

  def appointments
    Appointment.all.select do |x|
      x.doctor == self
    end
  end

  def patients
  end

end
