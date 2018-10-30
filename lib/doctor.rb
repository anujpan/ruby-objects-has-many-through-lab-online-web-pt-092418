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
    Appointment.all.find_all do |x|
      x.doctor === self
    end
  end
  
  def patients
      
  end
end


# The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.