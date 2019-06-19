class Hangman
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
  
  end
