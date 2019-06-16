require "byebug"


class Oven
    attr_accessor :cookie, :bake_time

    #set timer for oven
    def initialize(cookie,bake_time)
        @cookie = cookie
        @bake_time = bake_time 
    end
    def baking_time
        if (0..4) === @bake_time
           puts "Cookies are not ready yet, doughy!"
        elsif
            (5..10) === @bake_time 
            puts "Cookies are Ready to be served"
         else
             puts "I am sorry, Cookies are Burned"
        end
    end
end

class Cookie 
    attr_accessor :timer
    def initialize(timer)
        @timer = timer
    end
end

class ChocolateCookie < Cookie
    def initialize
        super(10)     
    end
end

class BananaCookie < Cookie
    def initialize
        super(5)
    end
end

class Batch
    attr_reader :number_of_batch
    def initialize
        @number_of_batch = 8
    end
end



# DRIVER CODE FOR BAKERY

puts " Hi there, I am a new baker, Lets bake special cookies"
puts 
puts " What type to cookie would you like to get.chocolate cookie or banana cookie?"
type= gets.chomp.to_s
if type.downcase != "chocolate" && type.downcase != "banana"
    puts "Sorry, We can't provide you out of these two types above." 
    return nil
end

puts " How many Cookies would you like to have?"
number_of_cookie = gets.chomp.to_i

puts " How many batches would you like to have?"
number_of_batch = gets.chomp.to_i


puts "Please set the timmer of baking time _______ minutes"
baking_duration= gets.chomp.to_i

#Time count down for oven timmer for customer
puts
a = baking_duration
while a > 0
    puts a
    sleep(0.1)
    a -=1     
end
puts "Ding!Donggggggg".upcase

testcookie = ChocolateCookie.new
testcookie = BananaCookie.new
new_oven = Oven.new(testcookie,baking_duration)
new_oven.baking_time
#  puts new_oven.cookie.timer



