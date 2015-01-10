class Assignment < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :courses
end
