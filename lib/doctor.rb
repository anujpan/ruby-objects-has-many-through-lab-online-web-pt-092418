class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    @@all.push(self)
  end
end