data_arr = [
    ["Name", "Position", "Age", "Salary"],
    ["Adrian Lim", "Salesperson", "24", "RM2000"],
    ["John Smith", "Clerk", "31", "RM2300"],
    ["Shafie Abdullah", "Manager", "27", "RM3000"]
 ]

 hash ={}
 data_arr.each do |item|
    hash[item[0]] =item[1..4]
 end

 print hash