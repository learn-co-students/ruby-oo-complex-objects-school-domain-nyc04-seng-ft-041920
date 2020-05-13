# code here!
class School
  
  def initialize(roster)
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    
    if @roster[grade] 
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end
  
  def grade(grade)
    @roster[grade]
    
    
  end
  
  def sort
    @roster.each do |grade, student_array|
      student_array.sort!
      
    end
    
    
    
    
  end
  
  
  
  
  
  
  
end