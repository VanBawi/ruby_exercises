require 'byebug'

class Processor
    attr_reader :score_board

    def initialize
        @score_key = {
            a: 1, b: 3, c:3, d: 2 , e: 1,
            f: 4, g: 2, h: 4, i: 1, j: 8, 
            k: 5, l: 1, m: 3, n: 1, o:1 , 
            p: 3, q: 10, r: 1, s: 1, t: 1, 
            u:1, v:4, w:4, x:8, y:4, z:10 
            }
    end
end


class Sentence
    def highest_score(word, score_key)
    end
end


class EachWord
    def highest_score
    end
end

class Input
    attr_reader :text_file, :text_input
    def initialize
        def text_file
            @text_file = File.read("text.txt") 
        end
        def text_input
            @new_scores = @file.split(" ")
        end
end


score = Processor.new
score.text_file