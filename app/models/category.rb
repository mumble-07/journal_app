class Category < ApplicationRecord

  validates :category_name, presence: true, uniqueness: true
  validates :category_body, presence: true

  has_many :tasks #association niya with tasks
end
