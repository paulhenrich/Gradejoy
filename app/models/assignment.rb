class Assignment < ActiveRecord::Base
  validates :title, presence: true
end
