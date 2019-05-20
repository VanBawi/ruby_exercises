
array = []
while true
    puts "Add numbers to the array:"
    input = gets.chomp
    array.push(input)
    break if input.downcase == "done"
end
array.pop
print "new shuffled:"
p array.sort_by {rand}