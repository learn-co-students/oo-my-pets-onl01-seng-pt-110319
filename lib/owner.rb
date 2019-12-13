class Owner
  
attr_accessor :owner, :cats, :dogs  
attr_reader :species, :name
@@all = []

def initialize(name, species = "human")
  @name = name
  @species = species
  @@all << self 
  @cats = []
  @dogs = []
  end

  
   def self.all
    @@all 
  end 

  def say_species 
  "I am a #{self.species}."
  end 
  
   def self.count
    @@all.size
  end 
  
  def self.reset_all 
    @@all.clear
  end

    def cats	      
    Cat.all.select do |cat|
      cat.owner == self
    end 
  end 
  
  def dogs 
    Dog.all.select do | dog|
      dog.owner == self
    end 
  end 
  
end 

  