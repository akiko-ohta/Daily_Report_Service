class CreateDailyReports < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_reports do |t|

      t.timestamps
      t.integer :department_id, null: false
      t.integer :employee_id, null: false
      t.integer :task_id, null: false
      t.text :handover
    end
  end
end
