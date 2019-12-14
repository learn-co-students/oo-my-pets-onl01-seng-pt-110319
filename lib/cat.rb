class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  #@@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner
    
  #user = User.new.tap do |u|
  #u.username = "foobar"
  #u.save!
end
  end
  
  def cats
    #Cat.all
    @pets[:cats]
  end
  
end