puts "Enter the number of columns for the triangle: "
triangles=gets.chomp.to_i

1.upto(triangles) do |count|
  count.upto(triangles - 1) 
  count.times { print "* " }
  puts " "
end


# bonus section
puts " "
triangles= triangles 
triangles.downto(1) do |count|
  count.upto(triangles)
  count.times { print "* " }
  puts " "
end
