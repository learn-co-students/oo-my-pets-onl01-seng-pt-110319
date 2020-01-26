class Owner
  
  attr_accessor :pets, :cat, :dog
  
  attr_reader :name, :species
  
  @@all=[]

  
  def initialize(species="human",name)
    @species=species
    @name=name
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
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
  Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
  Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name,owner=self, mood="nervous")
  Cat.new(name,owner=self, mood="nervous")
  end
  
  def buy_dog(name, owner=self, mood="nervous")
    Dog.new(name,owner=self, mood="nervous")
  end
  
  def walk_dogs
   dogs.each do |pup|
     pup.mood = "happy"
   end
 end
 
 def feed_cats
   cats.each do |kitty|
     kitty.mood = "happy"
   end
 end
 
  def sell_pets
    dogs.each do |pup|
      pup.mood= "nervous"
      pup.owner = nil
    end
    cats.each do |kitty|
      kitty.mood = "nervous"
      kitty.owner = nil
    end
  end
      
  def list_pets
   ndogs = dogs.count
   ncats = cats.count
  "I have #{ndogs} dog(s), and #{ncats} cat(s)."
  end
     
end