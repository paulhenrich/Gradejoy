class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :course_enrollments
end
