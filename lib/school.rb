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
        #sort each array inside hash
        @roster.each do |grade, students|
            students.sort!
        end
    end
end

# school1 = School.new("Murrow")
# school1.add_student("Katy", 9)
# school1.add_student("Mary", 9)
# school1.add_student("Zon", 11)
# school1.add_student("Bob", 11)
# school1.add_student("Aon", 11)

# p school1.sort