# Exercise 38
# You will write a method, is_sorted?(array), that accepts an array of integers
# The method should return true if the elements are in increasing order, false otherwise.
# You may not use the Array#sort method in your solution


#Psudocode here
# 1. define solution to is_sorted?
# 2. name the parameter to array
# 3. set compare = array.length -1
# 4. loop every index of arrays till the end
# 5. set min_index = end_of_sorted
# 6. use for in condition for current_index to compare till the end_of_sorted
# 7.


# Write Your method code here
def is_sorted?(array)
    comparison = array.length -1
    comparison.times do |end_of_sorted|
        min_index = end_of_sorted
        for current_index in (end_of_sorted + 1 )..comparison
            min_index = current_index if array[current_index] < array[min_index]
        end
        array[end_of_sorted], array[min_index] = array[min_index], array[end_of_sorted] 
        if min_index != end_of_sorted
    end
    array
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = is_sorted?(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 4, 10, 13, 15], true)
    check_solution(2, [1, 4, 10, 10, 13, 15], true)
    check_solution(3, [1, 2, 5, 3, 4 ], false)
end

# Execute the tests.
run_tests()