class Cat
  
  attr_reader :name
  attr_accessor :owner, :mood
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