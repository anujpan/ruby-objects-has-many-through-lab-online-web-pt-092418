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
  
  def new_appointment
    
  end
end