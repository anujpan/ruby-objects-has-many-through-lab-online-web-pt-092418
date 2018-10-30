class Appointment
  attr_reader :date, :patient, :doctor
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
end


# The Appointment class needs a class method .all that lists each appointment in the class variable.

# An appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The appointment should be saved in the @@all array.