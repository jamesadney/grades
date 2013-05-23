class Grade < ActiveRecord::Base
  attr_accessible :assignment_id, :score, :student_id

  belongs_to :student
  belongs_to :assignment
end
