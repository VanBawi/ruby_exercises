require_relative "./runner"
require 'byebug'
require 'awesome_print'

class Sudoku
    attr_accessor :board, :units, :peers, :values, :done
    # Takes a board as a string in the format
    # you see in the puzzle file. Returns
    # something representing a board after
    # your solver has tried to solve it.
    # How you represent your board is up to you!
    # attr_reader :numbers, :rows, :columns, :squares
    def initialize(board_string)
        @board = board_string.split("")
        @digits = (1..9).to_a
        @rows = ("A".."I").to_a
        @cols = (1..9).to_a
        #total number of squares
        @squares = cross(@rows, @cols)

        @unit_list = []
        col_units = @cols.map {|col|cross(@rows, [col])}
        row_units = @rows.map {|row|cross([row], @cols)}
        nine_squares = []
        #geeting the row unit  3each
        @rows.each_slice(3) do |therow|
            @cols.each_slice(3) do |thecol|
                nine_squares << cross(therow, thecol)
            end
        end

        #including the row units, column units
        @unit_list = row_units + col_units + nine_squares
        # byebug
        #create new hash  the units possible for each square
        @units = {}
        for i in @squares do 
            @units[i] = @unit_list.select {|u|u.include?(i)}
        end 

        #create new hash for all the peers of each square
        @peers = {}
        for i in @squares do 
            @peers[i] = @units[i].flatten.uniq.select {|j| j != i}
            # byebug
        end

        #creating something to keep the values of each square
        @values = {}
        for i in @squares do
            @values[i] = nil
        end

        @done = {}
        for i in @squares do
            @done[i] = false
        end
        # createdboard(read_grid_str(board_string))
    end

        def cross(a,b)
            return a.map { |x| b.map { |y| :"#{x}#{y}"} }.flatten
        end

        def solve
            
        end

        # Returns a boolean indicating whether or not the provided board is solved.
        def finished?

        end

        def board
            @rows.each do |row|
                @cols.each do |col|
                    values["{#row}{#col}"] = board_string[index]
                    index += 1
                end
            end
        end
        # Returns a string representing the current state of the board, well formatted for output to the screen. No `puts` here!
        def to_s


            variable = 0
            if variable % 9 == 0
                print "." *30


            # temp = ""
            # for i in @board[0..8]
            #    temp+="#{i}" 
            # end

            # temp = "\n"
            # for i in @board[9..17]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[18..26]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[27..35]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[36..44]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[45..53]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[54..62]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[63..71]
            #     temp+="#{i}"
            #  end

            #  temp = "\n"
            #  for i in @board[72..80]
            #     temp+="#{i}"
            #  end
        end

        def read_grid_str(input)
                # step 3, lets move the integer from array into the read_grid
                # _str need to initialize 2D array
                # remember - is empty space
            # grid = input.split(//).map {|s| s.to_i} #i for 0s not for -dash
            # return grid
        end

        def creat_board(array)
            newarray = @squares.zip(array)
            newarray.each do |x, y|
                @values[x] = y.to_s
            end
            return @values
            # step 4. lets find the number to be filled in 
            # step 4a, first lets fill in the entire board with all  the possibilities
            # first assign inital possibilities
        end
                
        def initial_possibilites
            @squares.each do |squarename|
                if @values[squarename] =="-"
                    @values[squarename] ="123456789"
                end
            end
        end
        #     then step 4b. looking at this, we fill in the ones that only has one possibility left (sure it is correct)
        #     then we will also continue to loop this and repaet since every time 
        #     that one number is filled in then the possibilities from all peers will be removed
        #     loop this until you can no longer find the anser

        def reevaluate_board_and_eliminate
            can_continue = false
            # iteration = 0
            while  can_continue ==false
                can_continue =true
                # iteration += 1
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
            
        end
end

# game = Sudoku.new(board_string)
# board_string = File.readlines('sudoku_puzzles.txt')
# board_string = 