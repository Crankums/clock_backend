class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.datetime :week_start
      t.datetime :week_end
      t.integer :employee_id

      t.timestamps
    end
  end
end
