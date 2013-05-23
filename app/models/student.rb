class Student < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :grades
  has_many :assignments, through: :grades
end
