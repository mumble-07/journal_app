class Category < ApplicationRecord

  validates :category_name, presence: true, uniqueness: true
  validates :category_body, presence: true
end
