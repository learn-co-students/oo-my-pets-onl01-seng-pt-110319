require 'pry'
class Owner

  attr_reader :name, :cat, :dog
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|x| x.owner == self}
  end

  def dogs
    Dog.all.select {|x| x.owner == self}
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    walking_dogs = self.dogs
    walking_dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    eating_cats = self.cats
    eating_cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    scared_dogs = self.dogs
    scared_dogs.each {|dog| dog.mood = "nervous"}
    scared_dogs.each {|dog| dog.owner = nil}
    scared_cats = self.cats
    scared_cats.each {|cat| cat.mood = "nervous"}
    scared_cats.each {|cat| cat.owner = nil}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
