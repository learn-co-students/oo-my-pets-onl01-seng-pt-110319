class Owner
 attr_reader :name, :species
 @@all = []
 @@pets = { :dogs => [], :cats => [] }
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
end

def say_species
  "I am a #{species}."
end

def self.all 
  @@all 
end

def self.count
 @@all.length
end

def self.reset_all
  @@all = []
end

def cats 
  Cat.all.select 
end
end