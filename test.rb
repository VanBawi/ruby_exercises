#def first
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


# class Sudoku
#     def initialize board
#       @board = board
#     end
  
#     def solve!
#       num_index = @board.index('0')
#       return true unless num_index
#       ('1'..'9').each do |possibility|
#         @board[num_index] = possibility
#         return @board if (board_valid? num_index) && solve!
#       end
#       @board[num_index] = '0'
#       false
#     end
  
#     def board_valid? num_index
#       num = @board[num_index]
#       return false unless valid_row? num, num_index
#       return false unless valid_col? num, num_index
#       return false unless valid_box? num, num_index
#       true
#     end
  
#     def valid_row? num, num_index
#       row = num_index / 9
#       start = row * 9
#       (start..(start + 8)).each do |check_i|
#         return false unless valid? check_i, num, num_index
#       end
#       true
#     end
  
#     def valid_col? num, num_index
#       col = num_index%9
#       start = 0
#       (1..9).each do |x|
#         check_i = start + col
#         return false unless valid? check_i, num, num_index
#         start += 9
#       end
#       true
#     end
  
#     def valid_box? num, num_index
#       col_start, row_start = (((num_index%9)/3) * 3), ((num_index/27) * 27)
#       3.times do
#         (col_start..(col_start+2)).each do |col|
#           return false unless valid? col + row_start, num, num_index
#         end
#         row_start += 9
#       end
#     end
  
#     def valid? index, num, num_index
#       return false if index != num_index && num == @board[index]
#       true
#     end
#   end
  
#   s = Sudoku.new("800000000003600000070090200050007000000045700000100030001000068008500010090000400")
#   p s.solve!

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