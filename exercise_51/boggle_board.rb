class BoggleBoard
  attr_reader :board, :dice
  def initialize
    @board = ['_'] * 16
    to_s
    shake!
    @dice = %w(AAAFRS AAEEEE AAFIRS ADENNN AEEEEM AEEGMU AEGMNN AFIRSY BJKQXZ CCNSTW CEIILT CEILPT CEIPST DHHNOT DHHLOR DHLNOR DDLNOR EIIITT EMOTTT ENSSSU)
  end

  def shake!
    @dice.shuffle!
      @board.each_with_index do |space, inex|
        board[index] = dice[index].split('').sample
      end
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    "What is this? Try printing me! "
      @borad.each_slice(4) { |x| puts x.join("")}
  end
end

# DRIVER CODE BELOW: PLEASE WRITE IT #

BoggleBoard.new