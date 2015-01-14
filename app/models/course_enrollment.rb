class CourseEnrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  validates :student_id, :course_id, presence: true
end
