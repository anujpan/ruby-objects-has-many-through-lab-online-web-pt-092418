class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    # binding.pry
    Appointment.all
  end
  
  def patients
    
  end
end


# The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new appointment. That appointment should know that it belongs to the doctor

# The Doctor class needs an instance method, #appointments, that iterates through all appointments and finds those belonging to this doctor.

# The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.