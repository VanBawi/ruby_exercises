class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    def name
        @name
    end

    def breed
        @breed
    end
    def age
        @age
    end
    def bark
        @bark
    end
    def favorite_foods
        @favorite_foods
    end

    def age=(number)
        @age = number
    end
    def bark
        if @age <= 3
            @bark.downcase
        else
            @bark.upcase
        end
    end
    def favorite_food?(string)
        favorite_foods.each do |stri|
            if stri.downcase == string.downcase
                return true
            else
                next
            end
        end
        return false
    end
end


