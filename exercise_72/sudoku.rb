class Sudoku
# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
attr_reader :numbers, :rows, :columns
  def initialize(board_string)
    @numbers = (1..9).to_a
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

    #create new hash  the units possible fo reach square
    @units = {}
    for i in @squares do 
        @units[i] = @unit_list.select {|u|u.include?(i)}
    end 

    #create new hash fo rall the peers of each square
    @peers = {}
    for i in @squares do 
        @peers[i] = @units[i].flatten.uniq.select {|j| j != i}
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
    createdboard(read_grid_str(board_string)

  end

  def cross(a,b)
    return a.map { |x| b.map { |y| :"#{x}#{y}"} }.flatten
  end


  def solve
  end

  # Returns a boolean indicating whether or not the provided board is solved.
  def finished?
  end

  # Returns a string representing the current state of the board, well formatted for output to the screen. No `puts` here!
  def to_s

  end
end



# def cross(a,b)
# after everything is set up
# step 2, lets read the input file and convert 
# it to someting that can be used to be solved
# end

# def read_grid_str(input)
# step 3, lets move the integer from array into the read_grid
# _strneed to initialize @D array
# remember - is empty space
# end

# def creatboard(array)
# step 4. lets find the number to be filled in 
# step 4a, first lets fill in the entire board with all  the possibilities
# first assign inital possibilities
# end
        
# def initialpossibilites
    # then step 4b. looking at this, we fill in the ones that only has one possibility left (sure it is correct)
    # then we will also continue to loop this and repaet since every time 
    # that one number is filled in then the possibilities from all peers will be removed
    # loop this until you can no longer find the anser
# end

# def reevaluate_board_and_eliminate
# end

# def eliminate(square, number)
# end

# def finished?
# end
