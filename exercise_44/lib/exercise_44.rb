def partition(array,num)
    small =[]
    large = []
    array.each do |x|
        if x < num
            small.push x
        else
            large.push x
        end
    mix = [small , large]
end

def merge(hash_1,hash_2)
    merged = hash_1,hash_2.merge
end

def is_power_of_two?(num)
    if num < 1
      return false
    end
  
    while true
      if num == 1
        return true
      elsif num % 2 == 0
        num = num / 2
      else
        return false
      end
    end
end

def palindrome?(string)
    if string.length == 1 || string.length == 0
      true
    else
      if string[0] == string[-1]
        palindrome?(string[1..-2])
      else
        false
      end
    end
end
