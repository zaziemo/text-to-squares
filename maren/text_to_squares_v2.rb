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

# the Application class
#
# - knows all the available colors (this is common class knowledge, so it
#   should be a class method)
# - has a method `picture` which returns an instance of `Picture` created
#   with that string
# - has a method squares which returns the squares from the picture
#
# the Picture class
#
# - takes the string as well as a number of row and columns
#   as arguments of the initalize method
# - has a method `normalized_string` which returns a version of the string with
#   everything but A-Za-z stripped off and downcased
# - has a method `characters` which returns all the characters from the
#   normalized string
# - has a method `squares` which returns an array of `Square` instances where
#   each of the squares has one of the characters
#
# the Square class
#
# - takes a letter as an argument of the initialize method
# - has a method `color` which returns the color according to the letter

# the Application class
#
# - knows all the available colors (this is common class knowledge, so it
#   should be a class method)
# - has a method `picture` which returns an instance of `Picture` created
#   with that string
# - has a method squares which returns the squares from the picture

class Application
  attr_reader :Squares
  attr_reader :Picture
  
  def initialize(text)
    @text = text
  end
  
  def self.colors #knows all the available colors (this is common class knowledge, so it should be a class method)
    { "a" => "000000","b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" }
  end
  
  def picture #has a method `picture` which returns an instance of `Picture` created with that string
    @picture.create
    @picture
  end
  
  def squares #has a method squares which returns the squares from the picture
    #??
  end
  
end

class Picture
end

class Square
end

require 'test/unit'

class ApplicationTest < Test::Unit::TestCase
  def test_colors_returns_a_hash
    color = Application.colors
    assert color.is_a?(Hash), 'should be a hash' # assert that colors is a hash
  end

  def test_colors_returns_a_hash_containing_a_value_for_a
    color = Application.colors['a']
    assert color["a"] == '000000', 'should be 000000' # assert that color is the color which is assigned to "a"
  end

  def test_creation
    app = Application.new('something')
    assert "something".instance_of?(Application), 'should be an instance of the class' # assert that application is an instance of Application
  end

  def test_picture_returns_a_picture
    app = Application.new('something')
    assert picture.create = picture.new, 'should create a new picture' #assert that the method picture returns an instance of Picture
  end

  def test_squares_returns_an_array_of_squares
    app = Application.new('something')
    # assert that application.squares returns an array where the first object is an instance of Square
    # hint: you will need to implement the Picture and Square classes first
  end
end

class PictureTest < Test::Unit::TestCase
  def test_creation
    picture = Picture.new('something')
    # assert that picture is an instance of Picture
  end

  def test_normalized_string_strips_special_chars
    picture = Picture.new('something!')
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_normalized_string_downcases
    picture = Picture.new('SOMETHING')
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_characters_returns_an_array_of_characters_from_the_normalized_string
    picture = Picture.new('something')
    # assert that picture.characters returns an array of all characters contained in "something"
  end

  def test_squares_returns_an_array_of_squares_from_the_characters
    picture = Picture.new('something')
    # assert that picture.squares returns an an array of Square instances where the first one
    # has the letter "s"
    # hint: you will need to implement the Square class first
  end
end

class SquareTest < Test::Unit::TestCase
  def test_creation
    square = Square.new('a')
    # assert that square is an instance of Square
  end

  def test_color_returns_the_color_assigned_to_the_character
    square = Square.new('a')
    # assert that square.color returns the color which is assigned to "a"
  end
end