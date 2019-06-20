class Sentence
    def initialize

    end

    def score
        
    end
end

class Word
    def initialize(word)
        @word = word
    end

    def score
        letters = @text_file.downcase.split('')
        total = 0
        letters.each do |letter|
            total += @letter_scores[letter]
        end
        total
    end
end

class Input
    attr_reader :text_file
    def initialize
        @text_file = File.read("text.txt") 
    end
end


class Processor
    attr_reader :score_key

    def initialize
        @letter_scores = {
            a: 1, b: 3, c:3, d: 2 , e: 1,
            f: 4, g: 2, h: 4, i: 1, j: 8, 
            k: 5, l: 1, m: 3, n: 1, o:1 , 
            p: 3, q: 10, r: 1, s: 1, t: 1, 
            u:1, v:4, w:4, x:8, y:4, z:10 
            }
    end

    def report

    end

    private
    def calculate

    end
end

Processor.new("text.txt").report