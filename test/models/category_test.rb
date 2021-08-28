require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "This test should not save because there is no category_name" do
    category = Category.new
    #category.category_name = "Avion School Projects"
    category.category_body = "List of my Avion School projects"

    assert_not category.save, "Saved the category without the category_name"
  end

  test "This test should not save because there is no category_body" do
    category = Category.new
    category.category_name = "Avion School Projects"
    #category.category_body = "List of my Avion School projects"

    assert_not category.save, "Saved the category without the category_body"
  end
end
