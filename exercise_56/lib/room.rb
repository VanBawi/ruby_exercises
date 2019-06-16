class Room
    attr_accessor :capacity, :occupants
    def initialize(number)
        @capacity = number
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.size == @capacity
            return true
        elsif
            @occupants != @capacity 
            return false
        end
    end

    def availabel_space
        @occupants.size - @capacity
    end

    def add_occupant(name)
        full?
    end
end

room = Room.new(3)


