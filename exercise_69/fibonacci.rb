def iterative_nth_fibonacci_number(n)
        # if n == 0 
        #     return 0
        # end
        # # return 1 if n == 1 || n == 2
        # # return iterative_nth_fibonacci_number(n -1) + iterative_nth_fibonacci_number(n -2)
        # number = (1..17)
        # total = []
        # number.
        # end
        # return total
end

def recursive_nth_fibonacci_number(n)
    if n == 0 
    return 0
    end 
    return 1 if n == 1 || n == 2
    return recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n - 2)
end

p iterative_nth_fibonacci_number(17)