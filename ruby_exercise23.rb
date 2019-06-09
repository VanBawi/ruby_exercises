data_arr = [
    ["NAME", "Position", "AGE", "Salary"],
    ["Adrian Lim", "Salesperson", "24", "RM2000"],
    ["John Smith", "Clerk", "31", "RM2300"],
    ["Shafie Abdullah", "Manager", "27", "RM3000"]]

keys = data_arr.shift
array = []
data_arr.each do |element|
    hash = {}
    element.each_with_index do |detail,index|
        hash[keys[index]] = detail  
    end
    p array<<hash
end

 p array