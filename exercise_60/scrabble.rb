class Sentence
    def initialize

    end

    def score
        
    end
end

class Word
    def initialize

    end

    def score

    end
end

class Input
    def initialize
        @text_file = File.read("text.txt") 
        @new_scores = @file.split("")
    end
end


class Processor
    attr_reader :score_key

    def initialize
        @score_key = {
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