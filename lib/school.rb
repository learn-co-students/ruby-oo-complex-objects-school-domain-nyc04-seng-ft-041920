require 'pry' 
# code here!

class School
    attr_writer :roster
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @name = name
        @grade = grade

        @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_roster = {}
        @roster.each_pair do |key, value| 
            new_roster[key] = value.sort
        end
        new_roster
    end
end