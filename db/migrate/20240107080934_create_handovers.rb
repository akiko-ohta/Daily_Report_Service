class CreateHandovers < ActiveRecord::Migration[6.1]
  def change
    create_table :handovers do |t|

      t.timestamps
      t.text :handover
    end
  end
end
