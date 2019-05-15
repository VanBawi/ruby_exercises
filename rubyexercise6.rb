puts "give a number between 0-100"
num=gets.chomp.to_i

if num <= 50
        puts "your no is between 0 - 50"
elsif num <= 100
        puts "your number is between 50-100"
    elsif num >= 100
        puts "your number is bigger than 100"   
end
