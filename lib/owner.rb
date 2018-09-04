class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@count = 0
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.count
    @@count
  end
  
  def self.all
    @@all
  end
  
  def self.species
    @species
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(fish)
    fish = Fish.name
    @pets[:fishes] << "#{fish}"
    
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end
  
  def walk_dogs
    @pets[:dogs].each { |d| d.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fish].each { |f| f.mood = "happy"}
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
  def sell_pets
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.reset_all
    @@all = []
    @@count = 0
  end

  
end