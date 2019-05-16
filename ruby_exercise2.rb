
puts "give me a first two digits number"
first_number=gets.chomp

puts "give me a second two digits number"
second_number=gets.chomp

first_number=first_number.to_i
second_number=second_number.to_i
puts "the two numbers added #{first_number + second_number}"
puts "the second number deducted by the first number #{first_number - second_number}"
puts "the two numbers are being multiplied #{second_number * first_number}"
first_number=first_number.to_f
second_number=second_number.to_f
puts "the two numbers are being divided #{first_number /second_number}"

def add_number(a,b)
    a+b
end

def sub_number(a,b)
    a-b
end

def multiply_number(a,b)
    a*b
end

def div_number(a,b)
    a/b
end

def module_one(a,b)
    a%b
end


puts "addition", add_number(first_number,second_number)
puts "subraction",sub_number(first_number,second_number)
puts "multiplication",multiply_number(first_number,second_number)
puts "division",div_number(first_number,second_number)
puts "not evenly divided", module_one(first_number,second_number)


# user input operation
puts "Enter first number:"
num1 =gets.chomp().to_i

puts "Enter second number:"
num2 =gets.chomp().to_i

puts "Enter operator +, -, * or / "
op=gets.chomp()

if op == "+"
    puts (num1+num2)
elsif op == "-"
    puts (num1-num2)
elsif op == "/"
    puts num1 / num2
    if (num1 % num2 !=0)
        puts num1 % num2
    else
        puts "the result of the division is "
        puts num1 / num2
        puts "the reminder is"
        puts num1 % num2
    end
elsif op == "*"
    puts (num1*num2)
else 
    puts "invalid operation"
end



# four_digits=four_digits.to_i
# puts"thousands place is #{four_digits / 1000}"
# puts"hundreds place is #{four_digits%1000/100}"
# puts"tens place is #{four_digits%100/10}"
# puts"ones place is #{four_digits%10}"