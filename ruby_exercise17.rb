number_array =[]
while true
    puts "Please enter more numbers:"
    num = gets.chomp
    break if num.downcase=="done"
    number_array.push(num)
end
total = 0
puts "The lowest and the hisghest is " + number_array.min() + " and " + number_array.max() + "."
puts "The sum of all numbers:  #{number_array.inject(0){ |total, n| total.to_i + n.to_i } } ."
puts "Total numbers inputted: #{number_array.length()}."
puts "The average #{number_array.inject(0){ |total, n| total.to_i + n.to_i }.to_f / number_array.length} ."

print "The even numbers: "
p number_array.select{ |num| num.to_i%2==0}

print "All the numbers inputted: "
p number_array
#prime numbers section
print "Prime numbers: "
p number_array.select{ |num| num.to_i%num.to_i==0 && num.to_i%1==0 && num.to_i%2!=0 && num.to_i%3!=0}
