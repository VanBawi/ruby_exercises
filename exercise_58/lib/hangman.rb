class Hangman
::DICTIONARY = %w[should be an array words]
::random_word = ::DICTIONARY.sample
def initialize
  @@random_word 
  @secret_word = @@random_word
  @guess_word  = @@random_word.length
  @attempted_chars = []
  @remaining_incorrect_guesses = 5
end

  def guess_word
  end

  def attempted_chars
  end

  def remaining_incorrect_guesses
  end

  def already_attempted?
  end

  def get_matching_indices
  end

  def fill_indices
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
