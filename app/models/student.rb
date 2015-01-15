class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :course_enrollments
  has_many :courses, through: :course_enrollments
  has_many :assignments, through: :course_assignments
end
