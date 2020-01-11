class Dog
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []


  def initialize(name, ownerName)
    @name = name
    @owner = ownerName
    @mood = "nervous"
    @@all << self
  end
    
  def self.all
    @@all
  end

end