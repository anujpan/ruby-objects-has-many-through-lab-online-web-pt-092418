class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
end