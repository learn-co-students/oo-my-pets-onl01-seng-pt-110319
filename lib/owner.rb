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
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.each {|cat|cat.mood = "happy"}
  end 
  
  def sell_pets	
        all_pets = self.cats + self.dogs	
        all_pets.each do |pet|	
            sell_pet(pet)	
        end	
    end	

    def sell_pet(pet)	
        pet.owner = nil	
        pet.mood = "nervous"	
end 

def list_pets	
        dog_numbers = self.dogs.count	
        cat_numbers = self.cats.count	
        return "I have #{dog_numbers} dog(s), and #{cat_numbers} cat(s)."	

end 
end 

  