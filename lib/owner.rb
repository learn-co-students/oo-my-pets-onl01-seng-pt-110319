class Owner
   @@all=[]
   attr_reader :name, :species
   def initialize(name)
     @name=name
     @species="human"
     @@all<<self
   end
   def say_species
     human = self.species
     p "I am a #{human}."
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
     @cats=[]
     Cat.all.each do |cat|
       if cat.owner == self
         @cats<<cat
       end
     end
     @cats
   end
   def dogs
     @dogs=[]
     Dog.all.each do |dog|
       if dog.owner == self
         @dogs << dog
       end
     end
     @dogs
   end
  def buy_cat(cat_name)
    Cat.all.find do |cat|
      if cat.name==cat_name
        cat.owner=self
      else
        new_cat=Cat.new(cat_name, self)
      end
    end
  end
  def buy_dog(dog_name)
    Dog.all.find do |dog|
      if dog.name==dog_name
        dog.owner=self
      else
        new_dog=Dog.new(dog_name, self)
      end
    end
  end
  def walk_dogs
    self.dogs.each{|dog|dog.mood="happy"}
  end
   def feed_cats
     self.cats.each{|cat|cat.mood="happy"}
   end
   def sell_pets
    self.cats.each do |pet|
      pet.mood="nervous"
      pet.owner=nil
    end
    self.dogs.each do |pet|
      pet.mood="nervous"
      pet.owner=nil
    end
   end
   def list_pets
     p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
   end
end
