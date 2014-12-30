class Student < ActiveRecord::Base

  has_many :course_enrollments
end
