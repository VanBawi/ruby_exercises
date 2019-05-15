
# puts "give me a first two digits number"
# first_number=gets.chomp

# puts "give me a second two digits number"
# second_number=gets.chomp

# first_number=first_number.to_i
# second_number=second_number.to_i
# puts "the two numbers added #{first_number + second_number}"
# puts "the second number deducted by the first number #{first_number - second_number}"
# puts "the two numbers are being multiplied #{second_number * first_number}"
# first_number=first_number.to_f
# second_number=second_number.to_f
# puts "the two numbers are being divided #{first_number /second_number}"

# def add_number(a,b)
#     a+b
# end

# def sub_number(a,b)
#     a-b
# end

# def multiply_number(a,b)
#     a*b
# end

# def div_number(a,b)
#     a/b
# end

# def module_one(a,b)
#     a%b
# end


# puts "addition", add_number(first_number,second_number)
# puts "subraction",sub_number(first_number,second_number)
# puts "multiplication",multiply_number(first_number,second_number)
# puts "division",div_number(first_number,second_number)
# puts "not evenly divided", module_one(first_number,second_number)



puts "give me a first one number"
single_number=gets.chomp>to_i

puts "give me a second one number"
one_number=gets.chomp.to_i

puts "What kind of opeation would you like to perform?"
addnumber=gets.chomp.to_s


def module_one(a,b)
    a%b
end
puts "not evenly divided answer", addnumber(single_number,one_number)