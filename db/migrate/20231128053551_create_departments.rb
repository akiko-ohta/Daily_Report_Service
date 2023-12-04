class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|

      t.timestamps
      t.integer :employer_id, null: false
      t.string :name, null: false
    end
  end
end
