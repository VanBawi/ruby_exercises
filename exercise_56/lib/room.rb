class Room
    attr_accessor :capacity, :occupants

    def initialize(number)
        @capacity = number
        @occupants = []
    end

    def full?
        if @occupants.size == @capacity
            return true
        elsif
            @occupants != @capacity 
            return false
        end
    end

    def available_space
        @capacity - @occupants.size
    end

    def add_occupant(person)
        if full?
            return false
        else
            @occupants << person
            return true
        end
    end
end



