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
end


# A patient is instantiated with a name and be saved in the @@all array.

# The Patient class needs an instance method, #new_appointment, that takes in an argument of a doctor and a date and creates a new appointment. The appointment should know that it belongs to the patient.

# The Patient class needs an instance method, #appointments, that iterates through the appointments array and returns appointments that belong to the patient.

# The Patient class needs an instance method, #doctors, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.