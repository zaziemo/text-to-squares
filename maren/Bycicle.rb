# Come up with an idea for a program that contains at least two classes (a role playing game character)
# Create an empty file, require "test/unit" and add empty class definitions for your new classes.
# Write down your expectations about what the classes do in plain text/comments at the end of the file:
# - How will the classes behave towards their outer world/each other?
# - What will they expose, what behaviour will they offer?
# Write down the method names as empty method definitions (including the arguments list) and add a comment to their body about what the method should do.
# Create an empty test case class for each of your classes.
# Run the file, it should print out the test output.
# Commit and push this.
#+require "test/unit"

#User Peter, wears short trousers, rides a racing bike > no roll up
#User Sarah, wears a skirt, rides a holland bike > no roll up
#User Sonja, wears long trousers, rides a mountain bike > roll up

class Bike
  def has?(chain_protection)
    #has chain_protection or has not, e.g. racing bike has not, mountain bike has not, trekking bike has, holland bike has
  end
end

class User
   def initialize(name) #user has a name
   end
   
   def wear #ueser wears one specific piece of clothing, this is randomly chosen
   end
   
   def ride(bike) #rides a bike that is randomly chosen
   end
   
   def roll_up?(long trousers) #depending on what clothes user wears and what kind of bike he or she rides, driver has to roll up his trousers
   end
   
end

class Clothes #user wears one piece of clothing, e.g. long trousers, short trousers, skirt
  @clothes = clothes [long trousers, short trousers, skirt]
end


#there are different types of bikes e.g. a racing bike or a holland bike
#the most important difference for 
#there are different users who ride a certain bike and that wear a specific piece of clothing
#if the bike has no chain protection, the driver has to roll up his trousers
#if he or she wears trousers


class BikeTest < Test::Unit::TestCase
end

class UserTest < Test::Unit::TestCase
end

class ClothesTest < Test::Unit::TestCase
end