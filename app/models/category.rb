class Category < ApplicationRecord

  validates :category_name, presence: true
  validates :category_body, presence: true
end
