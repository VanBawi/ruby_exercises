require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees
    attr_writer :funding
    def initialize(name , funding , salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        # salaries.key?(title)another way of writing this function
        if @salaries.include?(title)
            return true
        elsif !@salaries.include?(title)
            return false
        end
    end

    def >(startup1)
        self.funding > startup1.funding
    end

    def hire(name, title)
        if valid_title?(title) 
            @employees << Employee.new(name, title)
        else
            raise "error"
        end
    end

    def size
        @employees.size
    end

    def pay_employee(employee)
        if @funding >= @salaries[employee.title]
            employee.pay(@salaries[employee.title])
            @funding -= @salaries[employee.title]
        else
            raise "Not enough, funding"
        end
    end

    def payday
        @employees.each {|x| pay_employee(x)}
    end

    def average_salary
       @employees.map{|employee|@salaries[employee.title]}.sum / @employees.size
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup2)
        self.funding += startup2.funding
        startup2.salaries.each{|title,salary|@salaries[title] = salary unless  self.salaries.key?(title)}
        startup2.employees.each{|employee|self.employees << employee}
        startup2.close
    end  
end

