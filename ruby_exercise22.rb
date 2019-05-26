puts "Write a sentence"
text= gets.chomp

sentence =text.split
frequencies = Hash.new(0)

sentence.each {|count| frequencies[count]+= 1}
frequencies=frequencies.sort_by {|count, amount| amount}

frequencies.each do |count, amount|
    puts count + " " + amount.to_s

end

def has_unique_letters?(text)
    letters= text.gsub(/[^A-Za-z]/, '').chars
    letters ==letters.uniq
end

has_unique_letters?(text)
# Bonus section

# puts "Write a sentence"
# text= gets.chomp
# frequencies={}
# frequencies.default = 0
# text.each_char {|char|frequencies[char]+=1}
# text.unique_char {|count| puts "#{count}: #{frequencies[count]}"}



# puts "This is a test string."
# text1=gets.chomp.chars.to_a.uniq
# char=text1.count

# puts "text1"