# gender
gender = case
when gender == 'male'
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
    "you have odd number of years"
end
