# frozen_string_literal: true

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'This test should not save because there is no task_name' do
    task = Task.new
    # task.task_name = 'Journal App Project'
    task.task_body = 'This task is to create a journal app with CRUD'
    task.deadline = Date.today
    task.status = 'On-going'

    assert_not task.save, 'Saved the task without the task_name'
  end

  test 'This test should not save because there is no task_body' do
    task = Task.new
    task.task_name = 'Journal App Project'
    # task.task_body = 'This task is to create a journal app with CRUD'
    task.deadline = Date.today
    task.status = 'On-going'

    assert_not task.save, 'Saved the task without the task_body'
  end

  test 'This test should not save because there is no deadline' do
    task = Task.new
    task.task_name = 'Journal App Project'
    task.task_body = 'This task is to create a journal app with CRUD'
    # task.deadline = Date.today
    task.status = 'On-going'

    assert_not task.save, 'Saved the task without the deadline'
  end

  test 'This test should not save because there is no status' do
    task = Task.new
    task.task_name = 'Journal App Project'
    task.task_body = 'This task is to create a journal app with CRUD'
    task.deadline = Date.today
    # task.status = 'On-going'

    assert_not task.save, 'Saved the task without the status'
  end
end
