puts"give me 4 digits numbers"
four_digits=gets.chomp.to_i


puts"thousands place is #{four_digits / 1000}"
puts"hundreds place is #{four_digits%1000/100}"
puts"tens place is #{four_digits%100/10}"
puts"ones place is #{four_digits%10}"


# thousand=nb/1000
# hundreds=nb%1000/100
# tens=nb%100/10
# ones=nb%10

