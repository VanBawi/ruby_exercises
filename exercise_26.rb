#Exercise 26
# You are required to fill in the method to validate email addresses using a Regex
# You can find the syntax of an email address on the Wikipedia page - https://en.wikipedia.org/wiki/Email_address
# Run the Ruby script - If your regex is right, when it says ‘Valid Email Addresses’ it should all return “The email address is a valid email address”, and when it says “Invalid Email Addresses” it should all return “The email address is not a valid email address”
# Bonus: Extract email addresses out of a longer string before validating them

def validate_email(string)
    if string =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
        return "Complete email"
    else 
        return "Incomplete email"
    end
end

def validate_email_bonus(string)
    #Bonus: Your code here /will add if I can find the right method 
    return "Incomplete"
end

8.times { print "*" }
puts ""
puts "Valid Email Addresses"
8.times { print "*" }
puts ""

puts validate_email('email@example.com')
puts validate_email('firstname.lastname@example.com')
puts validate_email('email@subdomain.example.com')
puts validate_email('firstname+lastname@example.com')
puts validate_email('email@123.123.123.123')
puts validate_email('email@[123.123.123.123]')
puts validate_email('"email"@example.com')
puts validate_email('1234567890@example.com')
puts validate_email('email@example-one.com')
puts validate_email('_______@example.com')
puts validate_email('email@example.name')
puts validate_email('email@example.museum')
puts validate_email('email@example.co.jp')
puts validate_email('firstname-lastname@example.com')
puts validate_email('much."more\ unusual"@example.com')
puts validate_email('very.unusual."@".unusual.com@example.com')
puts validate_email('very."(),:;<>[]".VERY."very@\\ "very".unusual@strange.example.com')

puts ""
8.times { print "*" }
puts ""
puts "Invalid Email Addresses"
8.times { print "*" }
puts ""

puts validate_email('plainaddress')
puts validate_email('#@%^%#$@#$@#.com')
puts validate_email('@example.com')
puts validate_email('Joe Smith <email@example.com>')
puts validate_email('email.example.com')
puts validate_email('email@example@example.com')
puts validate_email('.email@example.com')
puts validate_email('email.@example.com')
puts validate_email('email..email@example.com')
puts validate_email('あいうえお@example.com')
puts validate_email('email@example.com (Joe Smith)')
puts validate_email('email@example')
puts validate_email('email@-example.com')
puts validate_email('email@example.web')
puts validate_email('email@111.222.333.44444')
puts validate_email('email@example..com')
puts validate_email('Abc..123@example.com')
puts validate_email('“(),:;<>[\]@example.com')
puts validate_email('just"not"right@example.com')
puts validate_email('this\ is"really"not\allowed@example.com')

puts ""
8.times { print "*" }
puts ""
puts "Bonus Valid Emails"
8.times { print "*" }
puts ""

puts validate_email_bonus('This is an email address: email@example.com')
puts validate_email_bonus('firstname.lastname@example.com is a bonus email.com')
puts validate_email_bonus('This is an email address: email@subdomain.example.com')
puts validate_email_bonus('firstname+lastname@example.com is a bonus.com email')
puts validate_email_bonus('This is an email address: _______@example.com')
puts validate_email_bonus('email@example.name is a bonus email')
puts validate_email_bonus('This is an email address: email@example.museum')
puts validate_email_bonus('this email is in the middle of email@example.co.jp a sentence')
puts validate_email_bonus('This is an email address: firstname-lastname@example.com')
puts validate_email_bonus('this email is in the middle of 23 much."more\ unusual"@example.com a sentence with numbers')

puts ""
8.times { print "*" }
puts ""
puts "Bonus Invalid Emails"
8.times { print "*" }
puts ""

puts validate_email_bonus('This is an email address: plainaddress')
puts validate_email_bonus('#@%^%#$@#$@#.com is a bonus email.com')
puts validate_email_bonus('This is an email address: @example.com')
puts validate_email_bonus('Joe Smith <email@example.com> is a bonus.com email')
puts validate_email_bonus('This is an email address: email@example@example.com')
puts validate_email_bonus('.email@example.com is a bonus email')
puts validate_email_bonus('This is an email address: email.@example.com')
puts validate_email_bonus('this email is in the middle of email..email@example.com')
puts validate_email_bonus('This is an email address: just"not"right@example.com')
puts validate_email_bonus('this email is in the middle of 23 this\ is"really"not\allowed@example.com a sentence with numbers')