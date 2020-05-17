# code here!

#import "pry"

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
        
    end

   def add_student(student, grade)
        if @roster.has_key?(grade)
            #roster[grade] << student
            roster[grade].push(student)
        else 
            roster[grade] = []
            #roster[grade] << student 
            roster[grade].push(student)
        end
   end

   def grade(grade)
    @roster[grade]
   end

   def sort
    @roster.each { |key, array| array.sort_by! { |s| [s[0]] }}
   end

end