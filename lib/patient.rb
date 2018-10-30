class Patient
  attr_reader :name, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, date, self)
    @appointments.push(appointment)
    appointment
  end
  
  def appointments
    Appointment.all.select do |x|
      x.patient == self
    end
  end
  
  def doctors
    Appointment.all.collect do |x| 
      x.doctor
    end
  end
end


# The Patient class needs an instance method, #appointments, that iterates through the appointments array and returns appointments that belong to the patient.

# The Patient class needs an instance method, #doctors, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.