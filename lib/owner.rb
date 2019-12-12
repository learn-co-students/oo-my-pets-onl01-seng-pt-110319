require 'pry'

class Owner
  
  attr_reader :name, :species
  attr_accessor :owner

  ## class variable = to an emtpy array
  @@all =  []
  
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a human."
  end

  ## class method that returns all instances of Owner that have been created
  def self.all 
    @@all
  end

  ## returns the number of owners that have been created
  def self.count 
    @@count
  end

  def self.reset_all 
    @@count = 0
  end

  def cats 
    Cat.all.select {|c| c.owner == self}
  end

  def dogs 
    Dog.all.select {|c| c.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|w| w.mood = "happy"}
  end

  def feed_cats
      self.cats.each {|fed_cat| fed_cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.each {|sold, pets| sold.mood = "nervous" ||  sold.owner = nil
    self.cats.each {|sold| sold.mood = "nervous" ||  sold.owner = nil
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
