puts "give a number between 0-100"
num=gets.chomp.to_i

if num <= 50
        puts "your no is between 0 - 50"
    elsif num <= 100
        puts "your number is between 50-100"
    elsif num >= 100
        puts "your number is bigger than 100"   
end

# case statements
puts "give a number between 0-100"

num=gets.chomp.to_i

num=case 
when num <= 50 
    puts "your no is between 0 - 50"
when num <= 100
    puts "your number is between 50-100"
when  num > 100
    puts "your number is less than 100"
else 
    puts "your number is less than 0"
end