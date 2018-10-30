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
    appointment = Appointment.new(date, doctor, self)
    @appointments.push(appointment)
    appointment
    binding.pry
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments.push(appointment)
    appointment
  end


  def doctors
    @appointments.collect do |x| 
      x.doctor
    end
  end
end

      # expect(hevydevy.appointments).to include(appointment)
      # expect(appointment.patient).to eq(hevydevy)
      
# The Patient class needs an instance method, #appointments, that iterates through the appointments array and returns appointments that belong to the patient.

# The Patient class needs an instance method, #doctors, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.