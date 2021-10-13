# frozen_string_literal: true

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'This test should not save because there is no category_name' do
    category = Category.new
    # category.category_name = "Avion School Projects"
    category.category_body = 'List of my Avion School projects'

    assert_not category.save, 'Saved the category without the category_name'
  end

  test 'This test should not save because there is no category_body' do
    category = Category.new
    category.category_name = 'Avion School Projects'
    # category.category_body = "List of my Avion School projects"

    assert_not category.save, 'Saved the category without the category_body'
  end

  test 'This test should not save because there is a duplicate in the category_name' do
    category = Category.new
    category.category_name = 'My Projects'
    category.save

    category_duplicate = Category.new
    category_duplicate.category_name = 'My Projects'

    assert_not category_duplicate.save, 'Saved the duplicate of category_name'
  end
end
