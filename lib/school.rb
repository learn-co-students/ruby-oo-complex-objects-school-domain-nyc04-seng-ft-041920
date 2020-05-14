class School
    attr_accessor :name, :grade, :roster
    
    def initialize(name, roster={})
        @name = name
        @roster = roster
    
    end


    def add_student(name, grade)
        @student_name = name
        @grade = grade
        if @roster.include?(grade) == false
          @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(student)
        @roster[student]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
    end
   end
end