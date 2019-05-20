puts "Input number for multiplication table"
times=gets.chomp.to_i
width = Math.log10(times**2).ceil + 1
puts (1..times).map { |x| (1..times).map 
    { |y| (x * y).to_s.rjust(width) }.join(' ') }.join("\n")