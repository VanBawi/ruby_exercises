
# puts "What is your first name?"
# first_name=gets.chomp

# puts "What is your last name?"
# last_name=gets.chomp

# puts "Hello, #{first_name} #{last_name}."

puts "How old are you?"
age=gets.chomp
age = age.to_i
year = 10
puts "your age in 10years will be #{age + year *1}"
puts "your age in 20years will be #{age + year *2}"
puts "your age in 30years will be #{age + year *3}"
puts "your age in 40years will be #{age + year *4}"


# puts "What is your first name?"
# first_name=gets.chomp

# puts "What is your last name?"
# last_name=gets.chomp
# full_name= first_name+ " " + last_name
# puts"your full name reversed is #{full_name.reverse}"
# full_name= first_name + last_name
# puts "Your full name has characters #{full_name.length}."
# full_name= first_name+ " " + last_name
# puts "Your full name uppercase is #{full_name.upcase}."



puts "Welcome to your gender and welcoming section"
puts "What is your gender?"
gender=gets.chomp
# gender
gender = case
when gender.downcase.upcase == 'male'
    puts "Hello Sir"
else
    puts "Hello Madam"
end
# age
if age <= 20
    puts "you are below 20."

elsif age >=20 && age <=40
    puts "you are between 20-40"
else
    "you are above 40"
end
# even or odd age
if age.even? == true
    puts "you have even number of years"
else
    "you have odd number of year"
end