# Exercise 39
# You will write a method, bubble_sort(array), that accepts an array
# The method should use the bubble sort algorithm to return an array with its elements arranged in increasing order
# You may not use the Array#sort method in your solution


# Psudocode here
# 1. define bubble_sort(array)
# 2. set variable new = array.length
# 3. create loop do and set sorted variable  and set it false to default
# 3a. loop till the end (new-1) times do i iteration
# 4. in the loop, use if, and check current var is > that next element (current var +1)
# 5. then swap the iterator i and next elment to next element
# 5. set sorted to ture and end the loop
# 6. break if not swapped
# 7. end the loop , and puts array

# Write Your method code here
 def bubble_sort(array)
    new = array.length
    loop do
       swapped = false
       (new-1).times do |i|
            if array[i] > array[i +1]
                array[i], array[i +1] = array[i +1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
    array
 end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = bubble_sort(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [2, 8, 5, 2, 6], [2, 2, 5, 6, 8])
    check_solution(2, [10, 8, 7, 1, 2, 3], [1, 2, 3, 7, 8, 10])
    check_solution(3, [1, -2, 5, 3, -4 ], [-4, -2, 1, 3, 5 ])
end

# Execute the tests.
run_tests()