require 'pry'

class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = @roster[grade] || []
    @roster[grade] << student
  end

  def grade(grade)
    @roster.each do |student_grade, name|
      if grade == student_grade
        return name
      end
    end
  end 

  def sort
    @roster.each do |student_grade, name|
      @roster[student_grade] = name.sort
    end
  end

end