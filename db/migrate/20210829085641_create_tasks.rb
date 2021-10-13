# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :task_name
      t.string :task_body
      t.datetime :deadline
      t.string :status

      t.timestamps
    end
  end
end
