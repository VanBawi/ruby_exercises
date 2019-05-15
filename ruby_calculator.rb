puts "give me a first number"
first_number=gets.chomp

puts "give me a second number"
second_number=gets.chomp

first_number=first_number.to_i
second_number=second_number.to_i
puts "the two numbers added #{first_number + second_number}"
puts "the second number deducted by the first number #{first_number - second_number}"
puts "the two numbers are being multiplied #{second_number * first_number}"
first_number=first_number.to_f
second_number=second_number.to_f
puts "the two numbers are being divided #{first_number /second_number}"