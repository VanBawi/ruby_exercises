require'colorize'
require 'byebug'

class Mastermind
    attr_reader :grid
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class HumanPlayer < Mastermind
    def input_color(game, marker)
        input = gets.chomp
        row1 = input.split(",")[0].to_s
        row2 = input.split(",")[1].to_s
        row3 = input.split(",")[2].to_s
        row4 = input.split(",")[3].to_s
        return [row1, row2, row3, row4]
    end
end

class ComputerPlayer < Mastermind
    def random_output_color(game, marker)
        colors = ["R", "G", "B", "O", "W", "Y"]
        random = colors.rand[0..3]
    end

    def feedback

    end
end

class Board

    attr_reader :grid

    def initialize(grid =   [[nil, nil, nil],[nil, nil, nil],
                            [nil, nil, nil],[nil, nil, nil],
                            [nil, nil, nil],[nil, nil, nil],
                            [nil, nil, nil],[nil, nil, nil],
                            [nil, nil, nil],[nil, nil, nil],
                            [nil, nil, nil],[nil, nil, nil]])
        @grid = grid 
    end

class Game 
    def initialize(player1, player2)

    end
end