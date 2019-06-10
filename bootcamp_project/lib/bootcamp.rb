class Bootcamp
    def initialize(name,slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers =[] 
        @students =[]
        @grades   = Hash.new {|name,value| name[value]=[]}
    end
        def name
            @name 
        end

        def slogan
            @slogan
        end

        def teachers
            @teachers
        end

        def students
            @students
            
        end

        def hire(teacher)
            @teachers << teacher

        end

        def enroll(student)
            if @students.length < @student_capacity
                @students << student
                return true
            else
                return false
            end
        end

        def enrolled?(student)
            @students.each do |i|
                if i == student
                return true
                else
                    next
                end
            end
            return false
        end

        def student_to_teacher_ratio
            ratio = @students.size / @teachers.size
        end

        def add_grade(student,num)
            if @students.include? student
                @grades[student] << num
                return true
            else
                return false
            end
        end

        def num_grades(student)
            @grades[student].size
        end

        def average_grade(student)
            if @grades[student].empty? || !enrolled?(student)
             nil
            else 
                @grades[student].sum / @grades[student].size
            end
        end
end