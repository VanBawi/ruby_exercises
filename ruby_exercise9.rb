puts "Hey, please give me a time in military "
puts "eg. 16:30 and I will convert it to (eg. 04:30PM"
time=gets.chomp
first_hour=time[0..1].to_i
minutes=time[3..4].to_i
puts "See you guy soon! Boom"


if first_hour <= 12
    hour = first_hour
    period ="AM" 
elsif first_hour > 12
    hour=first_hour - 12
    period="PM"
end

puts "your time is #{hour}:#{minutes} #{period}"