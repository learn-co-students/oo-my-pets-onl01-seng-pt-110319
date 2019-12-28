require 'pry'
class Owner
  attr_accessor
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def name
    @name
  end
  
  def say_species
    "I am a human."
    #binding.pry
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select{|c|c.owner == self}
    #binding.pry
  end
  
  def dogs
    Dog.all.select{|d|d.owner == self}
    #binding.pry
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each{|d|d.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|c|c.mood = "happy"}
  end
  
  def sell_pets
    dogs.each{|d|d.mood = "nervous"}
    cats.each{|c|c.mood = "nervous"}
    dogs.each{|d|d.owner = nil}
    cats.each{|c|c.owner = nil}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end