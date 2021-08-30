class Category < ApplicationRecord

  
  has_many :tasks #association niya with tasks
  validates :category_name, presence: true, uniqueness: true
  validates :category_body, presence: true

end
