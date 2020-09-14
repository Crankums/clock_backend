class AddTodaysDateToPunch < ActiveRecord::Migration[6.0]
  def change
    add_column :punches, :todays_date, :datetime
  end
end
