require 'pry'
class Owner
  attr_accessor :cats
  attr_reader :name, :species
  @@all = [ ]
  
  def initialize(name)
   @name = name
  @species = species
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
   @@all.count
   
 end
 
 
 def self.reset_all
   @@all.clear
 end
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end
   #binding.pry
  end
  
  def dogs 
     Dog.all.select do |doggie|
     doggie.owner == self 
     end
    
   end
   
   #binding.pry
   
   
   def buy_cat(name)
    Cat.new(name, self)
     
  end
  
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each{|d| d.mood ="happy"}
  end
  
  def feed_cats
    self.cats.each{|c| c.mood="happy"}
  end
  
  def pets 
    pets = dogs + cats
  end
  def sell_pets
    self.pets.each{|p| p.mood = "nervous"}
    self.sell_pets
    
    #binding.pry
  end
  
  
    
  
end

