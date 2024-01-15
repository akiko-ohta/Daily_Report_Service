class CreateDailyTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_tasks do |t|

      t.timestamps
      t.integer :department_id, null: false
      t.integer :task_id, null: false
      t.string :employee_id
    end
  end
end
