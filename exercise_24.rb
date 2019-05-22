#Exercise 24
# You are required to fill in the method with a regex to validate a new username
# Criteria for a valid username is as follows:
# It should start with an alphabet followed by alphanumeric characters
# No special characters allowed
# Username length should be at least 3 characters and should not exceed 20 characters
# Bonus: Disallow usernames which are just one character repeating
# Run the Ruby script - If your regex is right, when it says ‘Valid Usernames’ it should all return “The username is valid”, and when it says “Invalid Usernames” it should all return “The username is invalid”

def validate_username(string)
   string =~ /\A[a-zA-Z0-9]{3,20}\z/
end

8.times { print "*" }
puts ""
puts "Valid Usernames"
8.times { print "*" }
puts ""

puts validate_username("ironman2000")
puts validate_username("PikapikaPii")
puts validate_username("QwertyMaster9876")
puts validate_username("jay")
puts validate_username("XxaJchampionJ99axX")
puts validate_username("cryptoKING")
puts validate_username("RM5perpost")
puts validate_username("SYF1coder")

puts ""
8.times { print "*" }
puts ""
puts "Invalid Usernames"
8.times { print "*" }
puts ""

puts validate_username("3000lovesforyou")
puts validate_username("Bulb@84")
puts validate_username("grandmasterthebestchampionever80000")
puts validate_username("hi")
puts validate_username("ironman3000!!")
puts validate_username("a")
puts validate_username("123")
puts validate_username("u$3r")
puts ""
8.times { print "*" }
puts ""
puts "Bonus Invalid Usernames"
8.times { print "*" }
puts ""

puts validate_username("aaa")
puts validate_username("zzZZZZZ")
puts validate_username("cCc")
