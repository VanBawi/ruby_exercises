class Player
    def initialize(name, marker)
        @name = name
        @marker = marker
    end
end

class HumanPlayer < Player

    def move
        puts "enter your input" 
        #input will be e.g. "1,1"
        input = gets.chomp
        row = input.split(",")[0].to_i
        column = input.split(",")[1].to_i
        return [row, column]
    end
end

class ComputerPlayer < Player
    def move
        # if able to win, return winning position
        # if not, do random move
        # return random move position
    end
end

class Board
    def initialize
        @grid = [
            [nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]
        ]
    end

    def get_marker(position)
        # getter
        # position = e.g. [r,c]
        @grid[position[0]][position[1]]
    end

    def empty?(position)
        # [0,1]
        self.get_marker(position).nil?
    end

    def full?
        @grid.each do |each_row|
            each_row.each do |each_element|
                if each_element.nil?
                    return false
                end
            end
        end
        return true

        # @grid.all? { |row| row.none? { |element| element.nil? } }
    end

    def place_marker(position, marker)
        #setter
        #position = e.g. [0,0]
        # position[0] = 0
        #position[1] = 0
        #marker = ?????????

        if empty?(position)
            # @grid[0][0]
            @grid[position[0]][position[1]] = marker
        else
            raise "already has a marker at this position"
        end
    end

    def to_s
        @grid.each do |each_row|
            each_row.each do |each_element|
                print each_element + " | "
            end
            puts "-" * 8
        end
    end

    def winner
        # grid is already rows
        (@grid + columns + diagonals).each do |threes|
            if threes == ["x", "x", "x"]
                return "x"
            end
            if threes == ["o", "o", "o"]
                return "o"
            end
        end

    end

    def columns
        # @grid = [
        #     [nil, nil, nil],
        #     [nil, nil, nil],
        #     [nil, nil, nil]
        # ]
        cols = [[],[],[]]
        @grid.each do |each_row|
            each_row.each_with_index do |marker, index|
                cols[index] << marker
            end
        end
        return cols

        # return [
        #     [@grid[0][0],@grid[1][0], @grid[2][0]],
        #     [@grid[0][1],@grid[1][1], @grid[2][1]],
        #     [@grid[0][2],@grid[1][2], @grid[2][2]]
        # ]
    end

    def diagonals

        # return [
        #         [@grid[0][0],@grid[1][1], @grid[2][2]],
        #         [@grid[0][2],@grid[1][1], @grid[2][0]]
        #     ]


        # @grid = [
        #     ["x", nil, nil],
        #     [nil, nil, nil],
        #     [nil, nil, nil]
        # ]
        # @grid[0][0]

        first_diag = [[0,0],[1,1],[2,2]]
        second_diag =[[0,2],[1,1],[2,0]]

        # diag = []

        # [first_diag, second_diag].each do |each_diag|
        #     temp_diag = []
        #     each_diag.each do |each_position|
        #         # each_position = [0,0]
        #         temp_diag << self.grid[each_position[0]][each_position[1]]
        #     end
        #     diag << temp_diag
        # end

        [first_diag, second_diag].map do |each_diag|
            each_diag.map { |row, col| self.grid[row][col] }
        end

    end


end

class Game
    attr_accessor :player1, :player2
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def player_pos

    end

    def player_pos_mark

    end

    def turn_move

    end


    def start_game
        
    end

    def 





end
