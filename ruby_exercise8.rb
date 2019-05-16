user input operation
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

# number=op.to_i
# puts"thousands place is #{op/1000}"
# puts"hundreds place is #{op%1000/100}"
# puts"tens place is #{op%100/10}"
# puts"ones place is #{op%10}"

# puts "Enter first number:"
# num1 =gets.chomp().to_i
# puts "Enter second number:"
# num2 =gets.chomp().to_i
# puts "Enter operator +, -, * or / "
# op=gets.chomp()
# result=0


# def addition(num1,num2)
#     result = num1+num2
#     return result
# end
# def subtraction(num1,num2)
#     result = num1-num2
#     return result
# end
# def multiplication(num1,num2)
#     result = num1*num2
#     return result
# end
# def division(num1,num2)
#     result = num1/num2
#     return result
# end