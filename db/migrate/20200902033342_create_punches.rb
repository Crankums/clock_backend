class CreatePunches < ActiveRecord::Migration[6.0]
  def change
    create_table :punches do |t|
      t.time :punch_time
      t.date :todays_date
      t.string :punch_type
      t.integer :employee_id
      t.integer :timecard_id

      t.timestamps
    end
  end
end
