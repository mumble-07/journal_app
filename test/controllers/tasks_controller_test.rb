require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest

  test "Testing for categories#index" do
    assert_routing category_tasks_path, controller: 'tasks', action: 'index'
  end

  test "Testing for tasks#create" do
    assert_routing({ method: 'post', path: category_tasks_path(category_id: 1) }, { controller: 'tasks', action: 'create', category_id: "1" })
  end

  test "Testing for tasks#new" do
    assert_routing new_category_task_path, controller: 'tasks', action: 'new'
  end

  test "Testing for tasks#edit" do
    assert_routing({ method: 'get', path: edit_category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'edit', category_id: "1", id: "1" })
  end

  test "Testing for tasks#show" do
    assert_routing({ method: 'get', path: category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'show', category_id: "1", id: "1" })
  end

  test "Testing for tasks#update" do
    assert_routing({ method: 'put', path: category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'update', category_id: "1", id: "1" })
  end

  test "Testing for tasks#destroy" do
    assert_routing({ method: 'delete', path: category_task_path(1)}, { controller: 'tasks', action: 'destroy', id: "1" })
  end

end
