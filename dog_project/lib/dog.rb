class Dog

    attr_reader :name, :breed, :bark, :favorite_foods
    attr_accessor :age
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def bark
        if @age <= 3
            @bark.downcase
        else
            @bark.upcase
        end
    end

    def favorite_food?(foods)
        favorite_foods.each do |food|
            if food.downcase == foods.downcase
                return true
            else
                next
            end
        end
        return false
    end
end


