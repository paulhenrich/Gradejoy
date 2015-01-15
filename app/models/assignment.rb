class Assignment < ActiveRecord::Base
  validates :title, presence: true
  has_many :courses, through: :course_assignments
  belongs_to :student
end
