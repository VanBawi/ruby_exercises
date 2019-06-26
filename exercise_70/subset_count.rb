def subset_count(n, k)
    if n == 0 
        return 0
    elsif
        k == 1
        return n
    elsif
        k == 0
        return 1
    end
    return subset_count(n - 1, k - 1) + subset_count(n - 1, k)   
end 

# p subset_count(5,2)