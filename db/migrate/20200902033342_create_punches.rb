class CreatePunches < ActiveRecord::Migration[6.0]
  def change
    create_table :punches do |t|
      t.datetime :clock_in
      t.datetime :clock_out
      t.datetime :break_start
      t.integer :employee_id

      t.timestamps
    end
  end
end
