loop do
        puts "Type in your guess number within 1-1000:"
        guess = gets.chomp.to_i

        rand(1..1000)
        hidden =401
        if guess == hidden
            puts "You Win!"
        elsif 
            guess < hidden
            puts "Hotter"
        else
            puts "Colder"
        end
    break if guess == hidden
end