# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  # ======== trial since I'm using ``resources :categories``` -->http://localhost:3000/rails/info/routes

  test 'Testing for categories#index' do
    assert_routing categories_path, controller: 'categories', action: 'index'
  end

  test 'Testing for categories#create' do
    assert_routing({ method: 'post', path: categories_path }, { controller: 'categories', action: 'create' })
  end

  test 'Testing for categories#new' do
    assert_routing new_category_path, controller: 'categories', action: 'new'
  end

  test 'Testing for categories#edit' do
    assert_routing({ method: 'get', path: edit_category_path(1) },
                   { controller: 'categories', action: 'edit', id: '1' })
  end

  test 'Testing forcategories#show' do
    assert_routing category_path(1), controller: 'categories', action: 'show', id: '1'
  end

  test 'Testing for categories#update' do
    assert_routing({ method: 'put', path: category_path(1) }, { controller: 'categories', action: 'update', id: '1' })
  end

  test 'Testing for categories#destroy' do
    assert_routing({ method: 'delete', path: category_path(1) },
                   { controller: 'categories', action: 'destroy', id: '1' })
  end
  #================

  test 'Should go to index method, with route categories_path' do
    get categories_path
    assert_response :success
  end

  test 'Should redirect to /categories path after category create' do
    post categories_path params: { category: { category_name: 'School projects',
                                               category_body: 'My avion school project lists' } }
    assert_response :redirect
  end

  test 'Should go to new method with route new_categories_path' do
    get new_category_path
    assert_response :success
  end

  # test "Should be able to update category" do
  #   category = Category.new(category_name: 'School projects', category_body: 'My avion school project lists')
  #   category.save
  #   assert category.save

  #   category_name_update = 'Updated School projects'
  #   category_body_update = 'Updated My avion school project lists'

  #   put category_path, params: {category: {category_name: category_name_update, category_body: category_body_update}}

  #   assert_equal category_name_update, Category.find(category.id).category_name
  #   assert_equal category_body_update, Category.find(category.id).category_body

  # end
end
