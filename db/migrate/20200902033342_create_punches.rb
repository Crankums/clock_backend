class CreatePunches < ActiveRecord::Migration[6.0]
  def change
    create_table :punches do |t|
      t.string :clock_in
      t.string :datetime
      t.string :clock_out
      t.string :datetime
      t.string :break_start
      t.string :datetime
      t.string :employee_id
      t.string :integer

      t.timestamps
    end
  end
end
