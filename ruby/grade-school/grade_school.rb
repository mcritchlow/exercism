module BookKeeping
  VERSION = 3
end
class School
  attr_reader :students_by_grade
  def initialize
    @students_by_grade = []
  end
  def students(grade)
    data = students_by_grade.select { |g| g[:grade] == grade }
    return data if data == []
    data.first.fetch(:students, [])
  end

  def add(student, grade)
    existing_grade = students_by_grade.index { |g| g[:grade] == grade }
    if existing_grade
      grade_data = students_by_grade[existing_grade]
      return if grade_data[:students].include? student
      grade_data[:students] << student
      grade_data[:students].sort!
      students_by_grade[existing_grade] = grade_data
    else
      students_by_grade << { grade: grade, students: [student] }
      students_by_grade.sort! { |a,b| a[:grade] <=> b[:grade] }
    end
  end
end
