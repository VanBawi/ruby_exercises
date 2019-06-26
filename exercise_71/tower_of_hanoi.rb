
def iterative_tower_of_hanoi
#code here
end

def recursive_tower_of_hanoi(n, start, middle, last)
#code here
    # n=start.length
    if n == 1
    last << start.pop
    else
        recursive_tower_of_hanoi(n-1, start, last, middle)
        last << start.pop
        recursive_tower_of_hanoi(n-1, last, middle, start)
    end
    return middle
end

A = [7,6,5,4,3,2,1]
B = []
C = []

p recursive_tower_of_hanoi(7, A, C, B)

p A
p B
p C



#pseudocode here
# if n = 1
#     move start to end then 
#     start move to extra
#     end move to extra

# step 2
#     move start to end

# step 3
#     extra to start
#     extra to end
#     start to end
