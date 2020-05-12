# code here!
require 'pry'

class School

    attr_reader :roster

    # When the class initializes the roster value is set to an empty hash
    def initialize(roster)
        @roster = {}
    end

    # Creates a Hash of Arrays of students
    def add_student(student, grade)
        if !@roster.include?(grade)
            @roster[grade] = [] # Creates array to store if there is none for the given grade
            @roster[grade] << student # Pushes student to the array in the key grade
        else
            @roster[grade] << student # If the grade key already exists, just shovels the student into array
        end
    end

    # Searches for students by grade
    def grade(grade) 
        @roster[grade]
    end

    # Sorts students by name
    def sort
        sorted = @roster.sort_by {|key, value| key}.to_h # Sort the hashes by the grade order.

        sorted.each do |key, value|
            value.sort! # Mutates the original array by sorting the values and then applying those changes to the array.
        end

        # return @roster
    end

end