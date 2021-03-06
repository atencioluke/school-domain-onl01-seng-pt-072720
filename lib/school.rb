# code here!
class School
    attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
    
  def add_student(student_name, grade)
      roster[grade] ||= []
      roster[grade] << student_name
  end

  def grade(grade)
      roster[grade]
  end

  def sort
    sorted_roster = {}
      roster.each { |grade, students| sorted_roster[grade] = students.sort}
      sorted_roster
  end
end