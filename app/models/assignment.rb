class Assignment < ActiveRecord::Base
  attr_accessible :description, :points, :title

  has_many :grades
  has_many :students, through: :grades
end
