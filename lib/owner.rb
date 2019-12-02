class Owner
  #instance variables
  attr_reader :name, :species

  #class variables
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  #instance methods
  def say_species
    "I am a human."
  end

  def cats
    Cat.all.find_all { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.find_all { |dog| dog.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    dogs.each { |dog|
      dog.mood = "nervous"
      dog.owner = nil
    }
    cats.each { |cat|
      cat.mood = "nervous"
      cat.owner = nil
    }
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
