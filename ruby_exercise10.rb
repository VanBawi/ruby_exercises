puts "Please give any input numbers positive ""\neg. 10."
numbers=gets.chomp.to_i


if numbers != "+"
    puts "Invalid input made!"
end

until numbers <=0
    numbers=numbers-1
        puts numbers
end
