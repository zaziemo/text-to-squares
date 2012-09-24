# it takes any given string of 250 characters max.
# it strips all characters that are not A-Za-z
# it downcases each character
# it assigns a color to each character (in a-z)
# it converts each instance of any character to 
#   a square that has the assigned color
# it outputs a picture of 50x50 squares max.

# candidates for classes:
#
# - Square
# - Picture
# - Application
# (- String)
# (- Color)
# (- Character)

# first goal: command line application that takes a string
# and outputs a list of N color string per line, e.g.
# 
# $ ruby text_to_squares.rb
# please enter your poem: our application is already working!
# aaaaaa bbbbbb cccccc dddddd
# eeeeee ffffff 000000 111111
#
# second goal: turn this into an actual web page using those
# css colors

# the application class
#
# - normalizes the string (strip off invalid characters
#   and downcase)
# - creates a picture instance with that string
# - gets all the squares from the picture and prints out their
#   colors line by line

require 'test/unit'

class AppTest < Test::Unit::TestCase
  def test_if_normalized_input_lenght_is_greater_than_zero_it #is there a string?
    input = input.new 
    assert input.length >= 1, 'input normalized should be at least one letter'
  end
end
  
class App
  
  def input
    puts "Please enter your text..."
  end
  
  def normalize #normalize the string (strip off invalid characters and downcase)
    text = gets.chomp.gsub(/[^a-zA-Z]/, '').downcase! #what does chomp    gsub (substitute everything with....)
  end
end


# the picture class
# 
# - knows all the available colors
# - takes the string as well as a number of row and columns 
#   as arguments of the initalize method
# - it generates the squares from the string

class Picture
end

# the square class
#
# - has a color
# - has a fixed size

class Square
end
