class Patient
  attr_accessor
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, date, self)
  end
  
  def appointments
    Appointment.all.collect do |x|
      x if x.Patient === self
    end
  end
  
  def doctors
    
  end
end


# The Patient class needs an instance method, #appointments, that iterates through the appointments array and returns appointments that belong to the patient.

# The Patient class needs an instance method, #doctors, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.