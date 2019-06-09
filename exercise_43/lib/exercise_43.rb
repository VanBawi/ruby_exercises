def average(num1, num2)
    n = num1 + num2
    ave = n.to_f / 2 
    return ave
end


def average_array(array)
    # sum = 0
    # array.each {|a| sum+= a}
    array.inject{ |sum, el| sum + el }.to_f / array.size
end


def repeat(string, num)
    rep = string * num
    return rep
end

def yell(string)
    return string.upcase + "!"  
end

def alternating_case(words)
    sentence = Array.new
    sentence = words.split(" ")
    new_array = Array.new 
        sentence.each_with_index do |c, index|
            if index.even?
                new_array << c.upcase
            else
                new_array << c.downcase
            end
        end
    return new_array.join(" ")
end

def hipsterfy(str)
    str.sub(/[aeiou](?=[^aeiou]*\z)/,"")
end

def count_vowels(string)
  num_vowels = 0

  i = 0
  while i < string.length
    if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
      num_vowels += 1
    end

    i += 1
  end

  return num_vowels
end
# def vowel_counts(string)
#     new_string = string.downcase
#     count=Hash.new(0)
#     string.split("").each do |x|
#         if string #write regular expression for it
#             count = count + 1
#         end
#         return count
#     end
# end

def caesar_cipher(offset, string)
  words = string.split(" ")

  word_idx = 0
  while word_idx < words.length
    word = words[word_idx]

    letter_idx = 0
    while letter_idx < word.length
      char_i = word[letter_idx].ord - "a".ord

      new_char_i = (char_i + offset) % 26
      word[letter_idx] = ("a".ord + new_char_i).chr

      letter_idx += 1
    end

    word_idx += 1
  end

  return words.join(" ")
end
  
  
    

