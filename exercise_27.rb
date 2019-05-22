puts "Hey, please give me a time in military "
puts "eg. 16:30 or  04:30PM"
time=gets.chomp.to_s

puts "What will be happening in this time?"
sec_time=gets.chomp.to_s

puts "Is it your last activity you would like to take? (Y/N)"
answer=gets.chomp
    case answer
    when answer "Y"
        puts "Would you like to add activity?"
        break if answer "N" 
    end



