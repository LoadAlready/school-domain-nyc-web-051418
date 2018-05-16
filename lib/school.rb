class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade_class)
    roster[grade_class]
  end

  def sort
    roster.each do |x,y|
      y.sort!
    end
  end
end
