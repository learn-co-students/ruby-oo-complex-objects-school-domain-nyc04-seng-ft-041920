require 'pry' 
# code here!

class School
    attr_accessor :roster

    def initialize(school)
        @school = school
        @roster = {}
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
        sorted_roster = {}
        @roster.each_pair do |key, value| 
            sorted_roster[key] = value.sort
        end
        sorted_roster
    end
end