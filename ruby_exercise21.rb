puts "Eg. for Dutch National Flag quiz"
input = [0,9,0,9,9,0,9,0]
array1 = []
print "this is sorted one"
p array1.push(input.select{|num|num == 0}) && array1.push(input.select{|num|num == 9}).flatten