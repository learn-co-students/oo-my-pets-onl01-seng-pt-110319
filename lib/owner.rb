class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = { :cats=>[] }
    @@all << self
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end
  
  def cats
    pets[:cats]
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
end