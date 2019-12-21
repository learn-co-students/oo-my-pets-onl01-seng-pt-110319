class Owner
  attr_accessor :dog, :cat
  attr_reader :species, :name
  @@owners = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end
  
  def say_species
   "I am a #{species}."
  end

  def self.all
    @@owners
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end

end
