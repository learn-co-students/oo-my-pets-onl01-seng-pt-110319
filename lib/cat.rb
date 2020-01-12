class Cat
  
  attr_accessor :owner, :mood
  attr_reader :name
  @@cats = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
  end
  
  def self.all
    @@cats
  end
  
  def self.count
    @@cats.count
  end
  
end