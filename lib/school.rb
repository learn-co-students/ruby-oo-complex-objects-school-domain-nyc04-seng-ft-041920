class School
    attr_accessor :roster
    attr_reader :school_name
    
    def initialize(school_name, roster = {})
        @school_name = school_name
        @roster = roster
    end

    def add_student(student_name, student_grade)
        if @roster[student_grade] == nil
            @roster[student_grade] = []
            @roster[student_grade] << student_name 
        else 
            @roster[student_grade] << student_name
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        @roster = @roster.sort_by { |k,v| k}.to_h
        @roster = @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end