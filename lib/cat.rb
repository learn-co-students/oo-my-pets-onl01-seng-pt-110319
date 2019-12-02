class Cat

  #class variables
  @@all = []

  #class methods
  def self.all
    @@all
  end

  #instance variables
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
end
