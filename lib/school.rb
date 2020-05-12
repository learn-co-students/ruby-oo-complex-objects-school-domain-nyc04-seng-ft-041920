require 'pry' 
# code here!

class School

    def initialize(school)
        @school = school
    end

    def roster
        @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade

        binding.pry

        roster[@grade] = []
        roster[@grade] << @name
        # if roster[:grade] 
        #     # roster[:grade] << name
        # else
        #     roster[:grade] = []
        #     roster[:grade] << [:name]
        # end
    end
end