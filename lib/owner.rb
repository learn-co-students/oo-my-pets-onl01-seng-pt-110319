require 'pry'
class Owner
  # code goes here
  attr_reader :name

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def species
    @species
  end

  def say_species
  #  self.species == "I am a human."
  if self.species == @species
    "I am a human."
    else
    nil
    end
  end

  def self.all
   @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
  @@count = 0
  end

  def cats
    Cat.all.select { |c| c.owner == self}
  end

  def dogs
    Dog.all.select { |d| d.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
      Dog.all.each do |walk_dogs|
        walk_dogs.mood = "happy"
      end
  end

  def feed_cats 
    Cat.all.each do |feed_cats|
      feed_cats.mood = "happy"
    end
  end

  def sell_pets
    self.cats.each do |sold_cat|
      sold_cat.mood = "nervous"
       sold_cat.owner = nil
    end
    self.dogs.each do |sold_dog|
      sold_dog.mood = "nervous"
       sold_dog.owner = nil
      # binding.pry
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


  
end
