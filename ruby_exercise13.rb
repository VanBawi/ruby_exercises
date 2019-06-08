puts "Input number for multiplication table"
times=gets.chomp.to_i
width = Math.log10(times**2).ceil + 1
puts (1..times).map { |x| (1..times).map 
    { |y| (x * y).to_s.rjust(width) }.join(' ') }.join("\n")

print_table(number)
biggest_number = number * number
max_length = biggest_number.to_s.length
for row in (1..number)
    for column in (1..number)
        print " " * nu
