# def print_addition(num1,num2)
#    puts num1 + num2
# end
# return  print_addition(1,1)
# require 'json'


# class Board
#     attr_reader :tiles, :valid_words

#     def initialize
#         @tiles = generate_tiles
#         @valid_words = generate_valid_words
#     end

#     def check_word(word)
#         valid_words.include?(word)
#     end

#     def print_board
#         puts "Here's the board:"
#         tiles.each_with_index {|tile, index|
#             print "#{tile} #{"\n"if index % 4 == 3}"
#         }
#     end

#     private

#         def generate_tiles
#             # https://boardgames.stackexchange.com/q/29264
#             dice = [
#                 ['R', 'I', 'F', 'O', 'B', 'X', '*'],
#                 ['I', 'F', 'E', 'H', 'E', 'Y', '*'],
#                 ['D', 'E', 'N', 'O', 'W', 'S', '*'],
#                 ['U', 'T', 'O', 'K', 'N', 'D', '*'],
#                 ['H', 'M', 'S', 'R', 'A', 'O', '*'],
#                 ['L', 'U', 'P', 'E', 'T', 'S', '*'],
#                 ['A', 'C', 'I', 'T', 'O', 'A', '*'],
#                 ['Y', 'L', 'G', 'K', 'U', 'E', '*'],
#                 ['QU', 'B', 'M', 'J', 'O', 'A', '*'],
#                 ['E', 'H', 'I', 'S', 'P', 'N', '*'],
#                 ['V', 'E', 'T', 'I', 'G', 'N', '*'],
#                 ['B', 'A', 'L', 'I', 'Y', 'T', '*'],
#                 ['E', 'Z', 'A', 'V', 'N', 'D', '*'],
#                 ['R', 'A', 'L', 'E', 'S', 'C', '*'],
#                 ['U', 'W', 'I', 'L', 'R', 'G', '*'],
#                 ['P', 'A', 'C', 'E', 'M', 'D', '*'],
#             ]

#             # To enable * use rand(7)
#             tiles = dice.map {|sides| sides[Random.new.rand(6)]}
#         end

#         def generate_valid_words
#             dictionary = File.read("lib/board/dictionary.txt").split("\n")
#             valid_words = dictionary.select {|word| find_word(tiles, word)}
#         end

#         # Given a tile's index (0 - 15), return a list of adjacent tile indexes
#         def get_adjacent_indexes(index)
#             row = index / 4  # Ruby will round-down integer division
#             col = index % 4

#             adjacent_indexes = []
#             adjacent_indexes.push(index - 4) if row > 0  # top
#             adjacent_indexes.push(index + 4) if row < 3  # bottom
#             adjacent_indexes.push(index - 1) if col > 0  # left
#             adjacent_indexes.push(index + 1) if col < 3  # right
#             adjacent_indexes.push(index - 5) if row > 0 && col > 0  # top-left
#             adjacent_indexes.push(index - 3) if row > 0 && col < 3 # top-right
#             adjacent_indexes.push(index + 3) if row < 3 && col > 0  # bottom-left
#             adjacent_indexes.push(index + 5) if row < 3 && col < 3  # bottom-right

#             return adjacent_indexes
#         end


#         def find_next_letter(board, tile, tile_index, remaining_word, used_indexes)
#             # puts "Checking for \"#{remaining_word}\" from #{tile} at #{tile_index}..."
#             return true if remaining_word.length == 0

#             adjacent_indexes = get_adjacent_indexes(tile_index)
#             adjacent_indexes.each do |index|
#                 # to prevent reverse traversal
#                 next if used_indexes.include?(index)

#                 can_form_remaining = false
#                 if board[index] == remaining_word[0] || board[index] == "*"
#                     used_indexes.push(index)
#                     can_form_remaining = find_next_letter(board, board[index], index, remaining_word[1..-1], used_indexes)
#                 end

#                 return true if can_form_remaining
#             end

#             return false
#         end


#         def find_word(board, word)
#             word = word.upcase  # to prevent any casing issues

# def first
#     return "Jack"
# end
# def last
#     return "Te"
# end
# def full
#     return first + " " + last
# end
# puts full

# players = {"name" => "Jack", "position"=> "midfield" , "numbers"=> {"shirt"=>"20","pants"=>"30"}}
# players["weight"] = "64kg"
# p players["position"]
# p players.fetch("name")

# players.each do |key, value|
#     if value == "7"
#         puts key
#     end
# end


# p players["numbers"]
# p players["numbers"].keys

# string = "The quick brown fox jumps over the lazy dog"

# newarray = []
# array = string.split("")

# array.each do |x|
#     newarray.unshift(x)
# end
# p newarray

# for char in 1..string.length do
#     puts string[-char]
# end
# for char in 0..string.length do
#     puts string[string.length-char]
# end
# string.each_char {|char| puts char}

# index = 0
#  array = ["fat", "bat", "cat"]
# while index < array.length
#     puts array[index] + "man"
#     index = index+1
# end


# array.each do |word|
#     puts word + "man"
# end


# sports =["football", "backet", "baseball"]

# sports.each_with_index do |sport,index|
#     puts (index+1).to_s +"."+ sport
# end

# captain_planet = ["earth", "fire", "wind", "water", "heart"]
# newarray=[]
# captain_planet.each do |element|
#     if element.match (/[a]/)
#         newarray << element
#     end
# end
# p newarray

# captain_planet = ["earth", "fire", "wind", "water", "heart"]
# newarray=[]
# captain_planet.each do |element|
    # if ! element.scan(/[a]/).empty?
#     if element =~ /[a]/
#         newarray << element
#     end
# end
# p newarray
# people = [["James", "cool person"], ["Bob", "good person"]]

# people.each do |person|
#     puts "#{person[0]} is a #{person[1]}"
# end
# people = [["James", 90], ["Bob", 85],["Bob", 11]]

# people.each do |person|
#     if person[1] > 80
#         puts person[0]
#     end
# end

# string = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate publishing the visual form of a document visual without relying on meaningful content. Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produced text."

# array = string.downcase.scan(/[\w'-]+/)

# # p array
# # unique_words =Hash.new(0)
# unique_words ={}
# array.each do |word|
#     # word = word.downcase
#     if unique_words[word] 
#     unique_words[word] += 1
#     else
#         unique_words[word] =1
#     end
# end

# unique_words.each do |word,counter|
#     if counter < 2
#         puts word + "." counter + "time"
#     else
#         puts word + "." counter + "time"
#     end
# end



# def fuzz_buzz(num)
#     numbers = []

#     (1..num).each do |i|
#         if i % 3 != 0 && i % 5 != 0
#             numbers << i
#         end
#     end
#     numbers
# end

# p fuzz_buzz(11)




# class Gadget
#     def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "Topsecret"
#     @production_number = "#{("A".."Z").to_a.sample}-#{rand(1..100)}"
#     end

#     def to_s
#         "Gadget #{@production_number}"
#     end

#     def username
#         @username
#     end
#     def production_number
#         @production_number
#     end
#     def username=(new_username)
#         @username = new_username
#     end
#     def password=(new_password)
#         @password = new_password
#     end
# end




# phone = Gadget.new
# puts phone.to_s
# puts phone.username
# puts phone.username=("Rubyman")
# puts phone.production_number
# puts phone.password = "bestpasswordever"
    


# 60 
# 67
# 61
# 62
# 66
# 68