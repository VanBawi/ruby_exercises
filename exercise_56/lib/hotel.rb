require_relative "room"

class Hotel
    attr_reader :name, :rooms
    attr_writer :rooms, :hash_room
    def initialize(name, hash_room)
        @name = name
        @rooms = Hash.new
        hash_room.each do |room, details|
            @rooms[room] = Room.new(details)
        end
    end

    def name
        cap = []
        @name.split(' ').each do |x|
            x = x.capitalize
            cap << x
        end
        return cap.join(' ')
    end

    def room_exists?(room_name)
        @rooms.each do |room, details|
            if room == room_name
                return true
            end
        end
        return false
    end

    def check_in(person, room_name)
        if !room_exists?(room_name)
            puts "sorry, room does not exist"
        else
            if @rooms[room_name].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        end
    end

    def has_vacancy?
        @rooms.each do |room, details|
            if !rooms[room].full?
                return true
            end
        return false
        end
    end

    def list_rooms
        @rooms.each do |room, details|
            print room
            puts details.available_space
        end
    end
end