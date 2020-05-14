class School
    
    attr_accessor :school_name, :roster, :grade

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @grade = grade
        if @roster.key?(@grade)
            @roster[@grade] << student_name
        else
            @roster[@grade] = []
            @roster[@grade] << student_name
        end
    end

    def grade(students_in_grade)
        @roster[students_in_grade]
    end

    def sort
            roster.each do |grade, students|
              roster[grade] = students.sort
            end 
        end
    end