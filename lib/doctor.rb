class Doctor
  attr_reader :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments.push(appointment)
    appointment
  end

  def patients
    @appointments.collect do |x|
      x.patient
    end
  end
end
