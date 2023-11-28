class CreateTodaysReports < ActiveRecord::Migration[6.1]
  def change
    create_table :todays_reports do |t|

      t.timestamps
      t.string :practitioner
      t.text :handover
    end
  end
end
