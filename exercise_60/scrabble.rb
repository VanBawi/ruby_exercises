require 'byebug'


class Sentence 
    attr_accessor :sentence
    def initialize(sentence_string)
        #...
    end
    
    def score
        sen_score = Hash.new(0)
        # sentences array
        text_file2 = @files.text_file.downcase.split(".")
        # push each sentence to a hash 
        text_file2.each do |sentence|
            p sentence.split("")

        
    end

end

class Word
    attr_accessor :letter_scores, :text_file
    def initialize
        @files = Input.new
        @letter_scores = {
            "a" => 1, "b" => 3, "c" =>3, "d" => 2 , "e" => 1,
            "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, 
            "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" =>1 , 
            "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, 
            "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 
            }
    end

    def score
        text_file1 = @files.text_file.downcase.split(".")
        $total = 0
        text_file1.each do |sentence|
            sentence.split(" ").each do |word|

                word.split("").each do |char|
                    if char.match(/[a-z]+/) 
                        $total += @letter_scores[char]
                    end
                    
                end
            end
        end
       puts $total 
    end
end

class Input
    attr_reader :text_file
    def initialize
        File.open("text.txt", "r"){ |file| @text_file = file.read }
    end
end


class Processor
    def initialize
       
    end

    def report

    end

    private
    def calculate

    end
end

Processor.new
Sentence.new.score

new_word =Word.new
new_word.score



simon = Word.new("simon")
myscore = simon.score




mysentence = Sentence.new("this is a sentence.")
mysentence.score
# hrfkucrkjfhkfkf