puts "Enter number to scale the square box"
input = gets.chomp.to_i
puts "Enter character for square box like =, + .etc"
char = gets.chomp 
puts "Check out your square box"

for number in 2..input do
    number = char
    print number
end

for number in 3..input do
    number = char
    puts number 
    print number
    for number in 3..input do
        number = " "
        print number 
    end
end
    puts char

for number in 1..input do
    number = char
    print number
end
puts " "

























# for number in 2..input do
#     number = char
#     print number
# end

# for number in 3..input do
#     number = char
#     # puts number 
#     print number
#     for number in 3..input do
#         number = " "
#         print number 
#     end
# end
#     puts char

# for number in 1..input do
#     number = char
#     print number
# end
# puts " "


