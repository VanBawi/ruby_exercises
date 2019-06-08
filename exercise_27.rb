# puts "Hey, please give me a time in military "
# puts "eg. 16:30 or  04:30PM"
# time=gets.chomp.to_s

# puts "What will be happening in this time?"
# sec_time=gets.chomp.to_s

# puts "Is it your last activity you would like to take? (Y/N)"
# answer=gets.chomp.to_s
   
#     while true
#         answer != "Y"
#         puts "Would you like to add activity?"
#         break if answer "Y" 
#     end


# hash ={time,activity}


def is_standard_time?(input_time)
    return true if input_time =~ /AM|PM/i
    return false
end
3.times do 
puts "input time"
input_time = gets.chomp
puts "Activity"
activity = gets.chomp
end

def convert_to_military(time)
    matches = time.match(/^(\d\d):(\d\d)(am|pm)/i)
    hours = matches[1].to_i
    minutes = matches[2]
    if matches[3].downcase == "pm"
        hours += 12
    end
        return hours.to_s + ":" + minutes
end

end

if is_standard_time?(input_time)
    input_time= convert_to_military(input_time)
end
hash[input_time] =activity

