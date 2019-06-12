class Die
  def initialize(sides = 6)
    @sides = sides
  end

  # Remember: rolls have to be between 1 and the sides - the minimum you can move is one step!
  # See: http://www.ruby-doc.org/core-2.6.3/Kernel.html#method-i-rand
  def roll
    rand(@sides)
  end 
end

class RubyRacer
attr_accessor :lenght, :players
  # Should hold data about the race:
  # the players, their positions, the track length, etc.
  def initialize(players, length = 30)
    @players =Hash.new{|k,v|k[v]=[]}
    @length = length
  end

  # Returns true if a player has reached the finish line and false otherwise.
  def finished?
    @players.values.each do |score|
      if score.sum >= @length
        return true
      end
    end
    return false 
  end

  # Rolls the die and advances each player accordingly
  def advance_player!(player)
    die = Die.new
    @players[player] << die.roll
  end

  # Returns the winner if there is one, nil otherwise
  def winner
    @players.each do |player,score|
      if score.sum >= @length
        return player
      end
    end
    return nil
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  def print_gameboard
    @players.each do |player,score|
      @length.times do |index|
        position = score.sum
        if position > @length -1
          position = @length -1
        end
        if position == index
          print player.to_s+"|"
            else 
          print " |"
        end
      end
      puts
    end
  end

  # For Part 2:
  # Prints the ranking board (Scoreboard)
  def print_scoreboard
      puts "Enter the number of players you want to compete with."
      number =gets.chomp.to_i

      number.times do
        puts "Enter your First Name"
        name = gets.chomp.to_s
      end

      


  end

end


 #### HELPER CODE - DO NOT EDIT THIS SECTION ####
 
# The following methods will help us
# to update the screen when printing the board.
# We don't need to test these methods.
def reset_screen
  clear_screen
  move_to_home
end

# Clears the content on the terminal.
def clear_screen
  print "\e[2J"
end

# Moves the insert point in the terminal to the upper left.
def move_to_home
  print "\e[H"
end

 #### END HELPER CODE ####

 #### DRIVER CODE - DO NOT EDIT BELOW FOR PART 1 ####

players = [:a, :b]

game = RubyRacer.new(players)

# Clear the screen and print the board with players in their starting positions.
# Then pause, so users can see the starting board. The fun can begin!
reset_screen
puts game.print_gameboard
sleep(1)

# Run the race.
until game.finished?
  # Do this each round until the race is finished.

  players.each do |player|

    # Move a player forward.
    game.advance_player!(player)

    # Now that the player has moved,
    # reprint the board with the new player positions
    # and pause so users can see the updated board.
    reset_screen
    puts game.print_gameboard

    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-2.6.3/Kernel.html#method-i-sleep
    sleep(0.1)
  end 
end

# Once the race is finished, report the winner.
puts "Player '#{game.winner}' wins!"

 #### END OF DRIVER CODE ####