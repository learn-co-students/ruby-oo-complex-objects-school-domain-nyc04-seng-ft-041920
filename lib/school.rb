#5/13/2020
#learned newly
#.detect
#||=
#.sort
# instance initialization



#6:49pm
# class School
#   attr_accessor :school_name, :roster
#
#   def initialize(school_name)
#     @school_name = school_name
#     @roster = {}
#   end
#
#   def add_student(student_name, class_level)
#     roster[class_level] ||= []
#     roster[class_level] << student_name
#   end
#
#   def grade(class_level)
#     roster.detect do |roster_class, roster_student|
#       if roster_class == class_level
#         return roster_student
#       end
#     end
#   end
#
#
#     #this sort organizes the element in alphabetical order. It's not organizing by grade.
#    def sort
#      sorted_hash = {}
#      roster.each do |roster_class, roster_student|
#        sorted_hash[roster_class] = roster_student.sort
#      end
#      sorted_hash
#    end
# end


# class School
#   attr_accessor :school_name, :roster

#   def initialize(school_name)
#     @school_name = school_name
#     @roster = {}
#   end

#   def add_student(student_name, class_level)
#     roster[class_level] ||= []
#     roster[class_level] << student_name
#   end

#   def grade(class_level)
#     roster.detect do |roster_class, roster_student|
#       if roster_class == class_level
#         return roster_student
#       end
#     end
#   end

#   #this sort organizes the element in alphabetical order. It's not organizing by grade.
#    def sort
#      sorted_hash = {}
#      roster.each do |roster_class, roster_student|
#        sorted_hash[roster_class] = roster_student.sort
#      end
#      sorted_hash
#    end
# end



#5/13/2020
#7:28pm - 7:48pm learned from the master
#7:48pm - 8:19 researched and understood the code

# class School
#   attr_accessor :school_name, :roster  #creating instances

#   def initialize(school_name) #creating callback methods initialization for global scope
#     @school_name = school_name
#     @roster = {}
#   end

#   #a ||= b means assign b to a if a is null or undefined or false (i.e. false-ish value in ruby), it is a shortcut to a = b unless a.

#   def add_student(student, level)
#     roster[level] ||= [] ##wtf was this? it's double pipe equal sign, that allows create [] if roster[level] is nil. So basically, if there's no previous student at that level, create the level.
#     roster[level] << student #then add this student to that level.
#   end

#   def grade(level)
#     roster.detect do |r_level, r_student|  ## what is .detecet method?  it's an interation block parameter method. If detecting the first condition returns the first true.
#       if r_level == level
#       return r_student
#       end
#     end
#   end

#   #just sorting names alphabetically.
#   def sort
#     sorted_hash = {}
#       roster.each do |r_level, r_student| #get the roster data.
#         sorted_hash[r_level] = r_student.sort #put that roster data into the empty hash to sort it out.
#       end
#       sorted_hash #return the sorted hash
#     end
# end


#5/13/2020

#8:20pm - 8:32 re-code to memorize, cemented the idea now hand write it before going to sleep
#
# class School
#
#   attr_accessor :school_name, :roster
#
#   def initialize(school_name)
#     @school_name = school_name
#     @roster = {}
#   end
#
#   def add_student(kid, level)
#     roster[level] ||= [] ##yess use that double pipe equal!
#     roster[level] << kid
#   end
#
#   def grade(level)
#     roster.detect do |r_level, r_kids|
#       if r_level == level
#       return r_kids
#       end
#     end
#
#   end
#
#   def sort
#     sorted_hash = {}
#     roster.each do |r_level, r_kids|
#       sorted_hash[r_level] = r_kids.sort
#     end
#     sorted_hash
#   end
#
# end

#
# school = School.new("Bayside High")
# school.roster
#
# school.add_student("Dina", 6)
# school.add_student("Leonora", 8)
# school.add_student("Hyojin", 4)
# school.add_student("Hannah", 6)
# school.add_student("Time", 7)
# school.add_student("Kev", 8)

#test below separately

#puts "school.roster::: #{school.roster}"
# school.roster::: {
#   6=>["Dina", "Hannah"],
#   8=>["Leonora", "Kev"],
#   4=>["Hyojin"],
#   7=>["Time"]
# }

#puts "school.grade:: #{school.grade(8)}"
#school.grade:: ["Leonora", "Kev"]

#puts "school.sort::: #{school.sort}"
# school.sort::: {
#   6=>["Dina", "Hannah"],
#   8=>["Kev", "Leonora"],
#   4=>["Hyojin"],
#   7=>["Time"]}

  class School
    attr_accessor :school_name, :roster

    def initialize(new_school)
      @school_name = new_school
      @roster = {}
    end

    def add_student(kid, level)
      roster[level] ||= [] #add empty arr if key is empty
      roster[level] << kid
      end


    def grade(level)
      roster.detect do |r_level, r_kid|
        if level == r_level
          return r_kid
        end
      end
    end

    def sort
      sorted = {}
      roster.each do |r_level, r_kid|
        sorted[r_level] = r_kid.sort
      end
      sorted
    end


  end
