# code here!
require 'pry'


class School
  attr_accessor :roster  
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
   if self.roster.has_key?(grade)
      roster[grade] << student
      self.roster
   else
      self.roster[grade] = []
      roster[grade] << student
      self.roster 
        
    end

end

  def sort
    sorted = {}
    roster.each do |k, v|
        sorted[k] = v.sort
    end
    sorted
  
  end

  def grade(grade)
    if roster.has_key?(grade)
        roster[grade]
    end

end




end