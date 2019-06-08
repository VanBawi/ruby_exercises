# puts "name"
# name=gets.chomp

# puts "first name"
# first_name= gets.chomp

# puts "last name"
# last_name= gets.chomp

# puts " Hello #{first_name} #{last_name}.20"

# puts " Tell me your age"
# age = gets.chomp.to_i

# puts " You will be this old in next 10 years #{age + 10}"
# puts " You will be this old in next 20 years#{age + 20}"
# puts " You will be this old in next 30 years#{age + 30}"
# puts " You will be this old in next 40 years#{age + 40}"

# puts "numer"
# num1=gets.chomp.to_i

# puts "first name"
# num2= gets.chomp.to_i

# puts " #{num1 + num2} "
# puts " #{num2 - num1} "
# puts " #{num1 * num2} "
# puts " #{num1 / num2} "


# puts "number of four digits"
# num=gets.chomp.to_i

# puts " I will tell you their each places value"
# puts " thousand place #{num / 1000}"
# puts " hundred place #{num % 1000 / 100}"
# puts " ten place #{num % 100 /10}"
# puts " ones place #{num % 10}"

# puts "first nubmer"
# num1=gets.chomp.to_i

# puts "second number"
# num2= gets.chomp.to_i

# def sum(a,b)
#    a + b 
# end
# def sub(a,b)
#     a - b
# end
# def mul(a,b)
#  a * b
# end
# def div(a,b)
#     a / b
# end

# def division(a,b)
#     a % b
# end

# no 5
# puts sum(num1,num2)
# puts sub(num1,num2)
# puts mul(num1,num2)
# puts div(num1,num2)
# puts "remainder of two numbers " div(num1,num2)


# no 6
# puts "first nubmer of between 100"
# num=gets.chomp.to_i

# if num >= 0 && num <= 50
#     puts "between 0-50"
# elsif num > 50 && num <=100
#     puts "between 50-100"
# else
#     puts "below 0 or more than 100"
# end

# puts "Hey, please give me a time in military "
# puts "eg. 16:30 and I will convert it to (eg. 04:30PM"
# time=gets.chomp

# first_hour=time[0..1].to_i
# minutes=time[3..4].to_i

# if first_hour <= 12
#     hour = first_hour
#     period = "AM"

# else 
#     first_hour > 12
#     hour = first_hour - 12
#     period = "PM"
# end
# puts " #{hour} : #{minutes} #{period} "

# puts "first nubmer positive"
# num1=gets.chomp.to_i

# if num1 != "+"
#     puts "Invalid input for operation"
# end

# answer = num1
# while answer <= 0
#     num1 = num1 - 1
# end
# puts answer

# until num1 == 0
#     num1 = num1 - 1
#     puts num1
# end

# 1.upto 100 do |i|
#     if i % 3 == 0 && i % 5 == 0
#         p   "fizzbuzz"
#     elsif
#         i % 3 == 0
#         p   "Fizz"
#     elsif 
#         i % 5 == 0
#         p   "Buzz"
#     else
#         p i
#     end
# end
    # array = "hello"
    # i = 0
    # new_array = []
    # while i <array.length
    #     p new_array.unshift(array[i])
    #     i = i+1
    # end
    # p  new_array.join
    # array = []
    # while true
    #     puts "Add numbers to the array:"
    #     input = gets.chomp
    #     array = array.push(input)
    #     break if input.downcase == "done"
    # end
    # # array.pop
    # p array.sort_by {rand}