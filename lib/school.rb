# code here!
require 'pry'

class School 
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def roster 
        @roster 
    end 

    def add_student(name, grade)
        
        @roster[grade] ? @roster[grade] << name :  @roster[grade] =[name]
    end 

    def grade(grade)
       students_arr= @roster.select do |s_grade, students|
            if grade == s_grade
                return students
            end 
        end 
        students_arr.flatten 
    end 

    def sort 
       sorted_keys = @roster.keys.sort 
       sorted_roster = {}
       sorted_keys.each do |key|
            sorted_roster[key] = @roster[key].sort 
       end 
       sorted_roster
    end 

end 