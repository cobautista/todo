class Category < ApplicationRecord

  validates :title,  uniqueness: true, length: { maximum: 20 }
  validates :body, length: { minimum: 5, maximum: 60 }
  # belongs_to :user
  has_many :tasks, dependent: :destroy

  
end
