class Category < ActiveRecord::Base
  validates :category, presence: true
  validates :weight, presence: true
  belongs_to :assignment
end
