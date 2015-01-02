class Course < ActiveRecord::Base
  validates :name, presence: true

  has_many :course_enrollments
  has_many :students, through: :course_enrollments
  belongs_to :user
end
