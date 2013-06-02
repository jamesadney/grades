class Student < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :grades
  has_many :assignments, through: :grades

  def self.has_score_for(assignment)
    # TODO: Implicit or explicit self?
    joins(:grades).where("grades.assignment_id" => assignment.id)
  end

  def grade_for(assignment)
    # FIXME: Why can't I do find_by_assignment(assignment)?
    self.grades.find_by_assignment_id(assignment.id)
  end
end
