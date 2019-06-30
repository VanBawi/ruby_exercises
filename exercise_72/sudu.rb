require 'byebug'
class Sudoku
    attr_accessor :board, :units, :peers, :values, :done, :squares, :rows, :cols, :digits
    def initialize(board_string)
        @board = board_string.split("")
        @digits = (1..9).to_a
        @rows = ("A".."I").to_a
        @cols = (1..9).to_a
        @squares = cross(@rows, @cols)

        @unit_list = []
        col_units = @cols.map {|col|cross(@rows, [col])}
        row_units = @rows.map {|row|cross([row], @cols)}

        nine_squares = []
        @rows.each_slice(3) do |therow|
            @cols.each_slice(3) do |thecol|
                nine_squares << cross(therow, thecol)
            end
        end

        @unit_list = row_units + col_units + nine_squares
        @units = {}
        for i in @squares do 
            @units[i] = @unit_list.select {|u|u.include?(i)}
        end 

        @peers = {}
        for i in @squares do 
            @peers[i] = @units[i].flatten.uniq.select {|j| j != i}
        end

        @values = {}
        for i in @squares do
            @values[i] = nil
        end

        @done = {}
        for i in @squares do
            @done[i] = false
        end
    end

        def cross(a,b)
            return a.map { |x| b.map { |y| :"#{x}#{y}"} }.flatten  
        end
        def solve

        end
        def finished?

        end
        def board
            @rows.each do |row|
                @cols.each do |col|
                    @values["{#row}{#col}"] = board_string[index]
                    index += 1
                end
            end
        end
        def to_s
            variable = 0
            if @board % 9 == 0
                print "." *30
                variable += 1
            end
        end

        def read_grid_str(input)
            grid = input.split(//).map {|s| s.gsub("", "-")} #i for 0s not for -dash
            return grid
        end

        def create_board(array)
            newarray = @squares.zip(array)
            newarray.each do |x, y|
                @values[x] = y.to_s
            end
                return @values
        end
                
        def initial_possibilites
            @squares.each do |squarename|
                if @values[squarename] =="-"
                    @values[squarename] ="123456789"
                end
            end
        end
    
        def reevaluate_board_and_eliminate
            can_continue = false
            while  can_continue ==false
                can_continue =true
                @squares.each do |squarename|
                    if @done[squarename] = false
                        if @values[squarename].length <= 1
                            eliminate(squarename,@values[squarename])
                            @done[squarename] = true
                            can_continue = false
                        end
                    end
                end
            end
        end

        def eliminate(square, number)
            if 
        end
end

game = Sudoku.new("board_string")
board_string = File.readlines('sudoku_puzzles.txt')