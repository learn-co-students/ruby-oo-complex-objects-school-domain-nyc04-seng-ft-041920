# code here!
require 'pry'

class School
    attr_accessor :roster, :name, :grade

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] << name ||= []
        # if @roster[grade]
        #     @roster[grade] << name
        # else
        #     @roster[grade] = []
        #     @roster[grade] << name
        # end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = @roster.each do |grade_num, name_array|
            name_array.sort!
        end
        sorted_roster
    end

end