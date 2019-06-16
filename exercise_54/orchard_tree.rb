# END OF EXERCISE QUESTION

# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
attr_reader :height , :age
MAX_AGE = 5
FRUIT_SEASON_TIME = 1  #year
  # Constructor for the tree
  def initialize
    # constructor code goes here
    @age=0
    @height = 0
    @oranges = []
  end

  # Ages the tree one year
  def age!
    #tree aging code goes here
    @age += 1
    @height += rand(100..400)
    rand(50..100).times {@oranges << Orange.new(rand(10..40))} if @age > FRUIT_SEASON_TIME
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    # code to check if tree has any oranges goes here
    @oranges.length > 0
  end

  def dead?
    # check if tree is dead code goes here
    @age == MAX_AGE
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    # orange-picking logic goes here
    @oranges.pop
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} cm tall"

until tree.dead?
  basket = []

  #It places the oranges in the basket
  #IT PLACES THE ORANGES IN THE basket

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

   # It's up to you to calculate the average diameter for this harvest.
   sum = 0
  basket.each {|orange| sum += orange.diameter}
  avg_diameter = sum/basket.length 

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/100.0} m"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
  puts ""

  #Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
puts "-----------------------------------------------------------"
puts "-----------------------------------------------------------"


# =============================================
# Apple Tree Code 
# =============================================
class NoApplesError < StandardError
end

class AppleTree
attr_reader :height , :age
MAX_AGE = 10
FRUIT_SEASON_TIME = 1   #year
  # Constructor for the tree
  def initialize
    # constructor code goes here
    @age=0
    @height = 0
    @apples = []
  end

  # Ages the tree one year
  def age!
    #tree aging code goes here
    @age += 1
    @height += rand(100..400)
    rand(50..100).times {@apples << Apple.new(rand(10..40))} if @age > FRUIT_SEASON_TIME
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_apples?
    # code to check if tree has any oranges goes here
    @apples.length > 0
  end

  def dead?
    # check if tree is dead code goes here
    @age == MAX_AGE
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_apple!
    # orange-picking logic goes here
    @apples.pop
  end
end

class Apple
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

tree = AppleTree.new

tree.age! until tree.any_apples?

puts "Tree is #{tree.age} years old and #{tree.height} cm tall"

until tree.dead?
  basket = []

  #It places the oranges in the basket
  #IT PLACES THE ORANGES IN THE basket

  while tree.any_apples?
    basket << tree.pick_an_apple!
  end

   # It's up to you to calculate the average diameter for this harvest.
  sum = 0
  basket.each {|apple| sum += apple.diameter}
  avg_diameter = sum/basket.length 

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/100.0} m"
  puts "Harvest: #{basket.size} apples with an average diameter of #{avg_diameter} cm"
  puts ""

  #Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"


puts "-----------------------------------------------------------"
puts "-----------------------------------------------------------" 
# =============================================
# Pear Tree Code 
# =============================================
class NoPearsError < StandardError
end

class PearTree
attr_reader :height , :age
MAX_AGE = 8
FRUIT_SEASON_TIME = 1   #year
  # Constructor for the tree
  def initialize
    # constructor code goes here
    @age=0
    @height = 0
    @pears = []
  end

  # Ages the tree one year
  def age!
    #tree aging code goes here
    @age += 1
    @height += rand(100..400)
    rand(50..100).times {@pears << Pear.new(rand(10..40))} if @age > FRUIT_SEASON_TIME
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_pears?
    # code to check if tree has any oranges goes here
    @pears.length > 0
  end

  def dead?
    # check if tree is dead code goes here
    @age == MAX_AGE
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_pear!
    # orange-picking logic goes here
    @pears.pop
  end
end

class Pear
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

tree = PearTree.new

tree.age! until tree.any_pears?

puts "Tree is #{tree.age} years old and #{tree.height} cm tall"

until tree.dead?
  basket = []

  #It places the oranges in the basket
  #IT PLACES THE ORANGES IN THE basket

  while tree.any_pears?
    basket << tree.pick_an_pear!
  end

   # It's up to you to calculate the average diameter for this harvest.
  sum = 0
  basket.each {|pear| sum += pear.diameter}
  avg_diameter = sum/basket.length 

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/100.0} m"
  puts "Harvest: #{basket.size} pears with an average diameter of #{avg_diameter} cm"
  puts ""

  #Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
puts "-----------------------------------------------------------"