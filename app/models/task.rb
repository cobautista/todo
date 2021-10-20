class Task < ApplicationRecord
    # validates :title, presence: true, uniqueness: {scope: :user}, length: { maximum: 20 }
    # validates :body, presence: true, length: { minimum: 5, maximum: 60 }

    
    belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
