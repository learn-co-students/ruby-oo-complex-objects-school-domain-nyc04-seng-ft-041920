require('pry')
class School 
    attr_reader :name, :roster, :add_student
    def initialize(name)
        @name = name
        @roster = {}
    end
  
 

    def add_student(name, grade)
         if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
         else
            @roster[grade].push(name)
      end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
    temp = @roster.map do |k,v|
    @roster[k] = v.sort
    end
    @roster = @roster.sort.to_h
    @roster
    end

end

