class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        sorted_roster = {}
        @roster.each do |k, v|
          sorted_roster[k] = v.sort
        end
        sorted_roster
      end
end