# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tasks # association niya with tasks
  belongs_to :user
  validates :category_name, presence: true, uniqueness: true
  validates :category_body, presence: true
end
