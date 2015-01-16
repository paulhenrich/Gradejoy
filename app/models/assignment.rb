class Assignment < ActiveRecord::Base
  validates :title, presence: true
  has_many :course_assignments
  has_many :students, through: :course_assignments
  has_many :courses, through: :course_assignments
  belongs_to :user
end
