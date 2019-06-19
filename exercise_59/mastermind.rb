require'colorize'
require 'byebug'

class Player
    attr_reader :grid
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class HumanPlayer < Player
    def input_color(game, marker)
        input = gets.chomp.to_s
        row1 = input.split(",")[0].to_s
        row2 = input.split(",")[1].to_s
        row3 = input.split(",")[2].to_s
        row4 = input.split(",")[3].to_s
        return [row1, row2, row3, row4]
    end
end

class ComputerPlayer < Player
    attr_reader :preset_colors, :colors, :attempts
    def random_output_color(game, marker)
<<<<<<< HEAD
        @colors = ["R", "G", "B", "O", "P", "Y"]
        @preset_colors = colors.rand[0..3]
        @attempts = 12

    end

    # def feedback
    #     red = 
    # end 
=======
        colors = ["R", "G", "B", "O", "P", "Y"]
        preset_colors = colors.rand[0..3]
        attempts = 12

    end

    def feedback
    end 
>>>>>>> 135e0c50b0bf5acc08fe08491008bd4cf6316582

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

    def game_over?
        won? || max_attempts
    end

    def won?
        !winner.nil? 
    end

    def max_attempts
        @attempts == 12
        byebug
    end

    def winner
        (self.grid.rows).each do |four_color|
            if four_color == game.board.preset_colors
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

    def get_marker(position)
        self.grid[position[0][position[1][position[2][position[3]]
    end

    def empty?
        if self.get_marker(position).nil?
            return false
        end
    end

    def place_marker(position, marker)
        if self.grid[position[0][position[1][position[2][position[3]] = marker
        end
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

    def game_over?
        won? || full?
    end

    def won?
        !winner.nil? 
    end

    def max_attempts?
        @attempts == 12
    end

    def winner
        (self.grid.rows).each do |four_color|
            if four_color == game.board.preset_colors
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

class Game 
    def initialize(player1, player2)
        @board = Board.new
        @players = 
    end
<<<<<<< HEAD

    def guess_color
        puts "Enter your colors"
    end
=======
>>>>>>> 135e0c50b0bf5acc08fe08491008bd4cf6316582
    
    def play_game
        until self.board.game_over?
            self.show

        end

    end

    def show
        puts self.board
    end
end