class Patient
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
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments.push(appointment)
    appointment
  end
  
  def doctors
    @appointments.collect do |x| 
      x.doctor
    end
  end
end
