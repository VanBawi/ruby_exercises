puts "Enter a number to convert to Roman Numerals:"
roman_num=gets.chomp.to_i

values = [["M",1000], ["CM",900], ["D",500], ["CD",400], ["C",100], ["XC", 90], ["L",50], ["XL", 40],["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]

final_roman= ""

values.each do |each_value|
    roman_numeral=each_value[0]
    value=each_value[1]
    final_roman=final_roman + (roman_numeral * (roman_num/value))
    roman_num=roman_num % value
end

puts final_roman