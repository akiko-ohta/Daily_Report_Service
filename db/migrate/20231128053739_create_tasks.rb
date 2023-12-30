class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

      t.timestamps
      t.string :name, null: false
      t.time :execution_time, null: false
      t.boolean :is_active, default: true
      t.integer :department_id, null: false
    end
  end
end
