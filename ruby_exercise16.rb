puts "inter your array to be reversed"
array=gets.chomp.to_s

def reverse(array)
    i=0
    new_array = []
    while i <array.length
        new_array.unshift(array[i])
        i=i+1
    end
return new_array.join
end
puts ("Reversed: " + reverse(array))