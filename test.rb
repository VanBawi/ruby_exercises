# def print_addition(num1,num2)
#    puts num1 + num2
# end
# return  print_addition(1,1)


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

string = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate publishing the visual form of a document visual without relying on meaningful content. Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produced text."

array = string.downcase.scan(/[\w'-]+/)

# p array
# unique_words =Hash.new(0)
unique_words ={}
array.each do |word|
    # word = word.downcase
    if unique_words[word] 
    unique_words[word] += 1
    else
        unique_words[word] =1
    end
end

unique_words.each do |word,counter|
    if counter < 2
        puts word + "." counter + "time"
    else
        puts word + "." counter + "time"
    end
end
