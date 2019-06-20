class Hangman
<<<<<<< HEAD
  DICTIONARY = ["bootcamp", "cat", "dog", "women"]
    def self.random_word
      DICTIONARY.sample
    end
  attr_reader :guess_word, :secret_word, :attempted_chars, :remaining_incorrect_guesses
  def initialize
    @secret_word = self.class.random_word
    @guess_word  = ['_'] * @secret_word.length
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
  
    def already_attempted?(char)
        if @attempted_chars.include?(char)
          return true
      elsif !attempted_chars.include?(char)
          return false
      end
    end
  
    def get_matching_indices(char)

    end
  
    def fill_indices(char, array)
    end
  
    def try_guess
    end
  
    def ask_user_for_guess
    end
  
    def win?
    end
  
    def lose?
    end
  
    def game_over?
    end
  
=======
DICTIONARY = ["bootcamp", "cat", "dog", "women"]
  def self.random_word
    DICTIONARY.sample
  end
attr_reader :guess_word, :secret_word, :attempted_chars, :remaining_incorrect_guesses
def initialize
  @secret_word = self.class.random_word
  @guess_word  = ['_'] * @secret_word.length
  @attempted_chars = []
  @remaining_incorrect_guesses = 5
end

  def already_attempted?(char)
      if @attempted_chars.include?(char)
        return true 
      elsif
        !@attempted_chars.include?(char)
        return false
      end 
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index do |each, index|
      indices << index if each == char
    end
    indices
  end

  def fill_indices
<<<<<<< HEAD
      char  
      @guess_word = char
  end

  def try_guess(char1)
    @get_matching_indices(char)
    @fill_indices
    if char.already_attempted?
      puts "that has already been attempted"
      return false
    elsif !char.already_attempted?
      @attempted_chars << char
    end
  end

  def ask_user_for_guess
      prints "Enter a char"
      char1 = gets.chomp
      @try_guess(char1)
      return @try_guess
  end

  def win?
      if @guess_word == @secret_word
        return true
        puts "WIN"
      elsif
        @guess_word != @secret_word
        return false
      end
      
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    elsif
        @remaining_incorrect_guesses != 0
        return false
    end
  end

  def game_over?
      win?
      lose?
      if win?
        puts "#{@secret_word}"
        return true
      elsif !lose?
        return false
      end
  end

end
=======
>>>>>>> 135e0c50b0bf5acc08fe08491008bd4cf6316582
  end
>>>>>>> eed4869d27893470b3889d6f09229a8ad86f933c
