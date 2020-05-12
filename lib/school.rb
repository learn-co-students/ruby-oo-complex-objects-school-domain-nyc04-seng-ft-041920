# code here!

class School

    def initialize(name)
        @name = name
        @hash = {}
    end

    def roster
        @hash
    end

    def add_student(student_name, grade)
        if @hash[grade]
            @hash[grade] << student_name
        else
            @hash[grade] = []
            @hash[grade] << student_name
        end
    end

    def grade(grade)
        @hash[grade]
    end

    def sort
        sorted_hash = {}
        @hash.each do |keys, values|
            sorted_hash[keys] = values.sort
        end

        sorted_hash
    end
end