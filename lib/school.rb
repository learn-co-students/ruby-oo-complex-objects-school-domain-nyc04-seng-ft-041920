class School
    #attr_accessor :roster
    
    attr_reader :name, :roster
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    #{9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
    def roster
        @roster
    end

    #{9 => ["Zach Morris"]}
    def add_student(student_name, grade)
        #http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html
        # a ||= b
        # a = a || b (if a is nil/false then set b)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        #find matching grade student in an array of student names
        @roster[grade]
    end

    def sort
        sort = {}
        #hash sort by same grade ,array of student name in order
        @roster.each do |grade, students|
            sort[grade] = students.sort
        end
        sort
    end
end
