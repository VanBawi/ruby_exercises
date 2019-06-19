require'colorize'
require 'byebug'
class Player 
    attr_reader :name
    attr_reader :grid
    def initialize(name)
        @name = name
    end
end

class Mastermind

    attr_reader :preset_colors, :COLORS
  
    COLORS = [:R, :G, :B, :W, :Y, :C]
    MAX_TURNS = 12
  
    def initialize
      @turns = 0
      @preset_colors = COLORS.sample(4)
    end
  
    def turn(guess)
      @final_guess = guess
      @turns += 1
      matches(guess)
    end
  
    def matches(guess)
      exact_matches, near_matches = 0, 0
      guess.each_with_index do |color, index|
        if @preset_colors.index(color) == index
          exact_matches += 1
        elsif @preset_colors.include?(color)
          near_matches += 1
        end
      end
      [exact_matches, near_matches]
    end
  
    def won?
      @final_guess == @preset_colors
    end
  
    def lost?
      @turns == MAX_TURNS && !won?
    end
  
    def guesses_remaining
      MAX_TURNS - @turns
    end
end


class Board

    attr_reader :grid

    def initialize(grid =  [[nil, nil, nil, nil],[nil, nil, nil, nil],
                            [nil, nil, nil, nil],[nil, nil, nil, nil],
                            [nil, nil, nil, nil],[nil, nil, nil, nil],
                            [nil, nil, nil, nil],[nil, nil, nil, nil],
                            [nil, nil, nil, nil],[nil, nil, nil, nil],
                            [nil, nil, nil, nil],[nil, nil, nil, nil]])
        @grid = grid 

    end

    def get_marker(position)
        self.grid[position[0]][position[1]][position[2]][position[3]]
    end

    def empty?
        if self.get_marker(position).nil?
            return false
        end
    end

    def place_marker(position, marker)
        self.grid[position[0]][position[1]][position[2]][position[3]] = marker
    end

    def to_s
        self.grid.each do |each_row|
            print "|  "
            each_row.each do |each_element|
                print each_element.to_s + "  |  "
            end
            puts
            puts "-" * 15
        end
    end

    def rows
        rows = [[],[],[],[]]
        @grid.each do |each_row|
            each_row.each_with_index do |marker, index|
                rows[index] << marker
            end
        end
        return rows
    end
end


class Game

  attr_reader :game
  
    def initialize(player)
      @board = Board.new
      @player = player
    end
  
  def move
      puts
      puts "Enter your first sequence of just four colors, separated by commas."
      puts "Choose from: R, G, B, W, Y, C "

      game_play

      puts "You won!" if @player.won?
      if @player.lost?
        puts "You lost!"
        puts "Correct answer was #{@player.preset_colors}"
      end
    end
    
  
    def game_play
        while true
          # self.show
          guess = gets.chomp.split(/,\s*/).map(&:to_sym)
          exact_matches, near_matches = @player.turn(guess)
          puts "You have #{exact_matches} exact matches and #{near_matches} near matches."
          break if @player.won? || @player.lost?
          puts "You have #{@player.guesses_remaining} guesses remaining. Enter your next guess."
          puts
        end
    end
end
  
game = Mastermind.new
player = Game.new(player)
player.move
