class Category < ApplicationRecord

  validates :title, presence: true, uniqueness: {scope: :user}, length: { maximum: 20 }
  validates :body, presence: true, length: { minimum: 5, maximum: 60 }
    # belongs_to :user
  has_many :tasks, dependent: :destroy

  
end
