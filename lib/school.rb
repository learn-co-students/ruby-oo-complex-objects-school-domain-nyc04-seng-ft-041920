# frozen_string_literal: true

require 'pry'
# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade].push name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    sorted_hash = {}
    @roster.each do |key, val|
      sorted_hash[key] = val.sort
    end
    sorted_hash
  end
end
