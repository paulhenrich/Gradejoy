class CourseAssignment < ActiveRecord::Base
  belongs_to :course
  belongs_to :assignment
  validates :course_id, :assignment_id, presence: true
end
