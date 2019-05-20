puts "Enter a word or a phrase to check if it is one the anagram of another:"
input = gets.chomp
puts "Enter another word:"
input1 = gets.chomp

arr = input.to_s
arr2 = input1.to_s

if arr.chars.sort.join == arr2.chars.sort.join  
    puts "Inputs are anagram."
else
    puts "Not anagrams."
end