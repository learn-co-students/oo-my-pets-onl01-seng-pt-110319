class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  @@all = []
  def initialize(name)
    @cats = [] 
    @dogs = []
    @name = name
    @@all << self
  end
  
  def species
    @species = "human"
  end
  
  def say_species
   "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    @cats
  end
  
  def buy_cat(cat)
    new_cat = Cat.new(cat, self)
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog, self)
  end
  
  def walk_dogs
    self.dogs.each{|el| el.mood = "happy"}
  end
  
  def feed_cats 
     self.cats.each{|el| el.mood = "happy"}
  end 
    
  def sell_pets
     self.cats.each{|el| el.mood = "nervous"; el.owner = nil}
     self.dogs.each{|el| el.mood = "nervous"; el.owner = nil}
     @dogs.clear
     @cats.clear
  end
  
  def list_pets

    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
   end
end