class Course < ActiveRecord::Base
  validates :course_name, presence: true
end
