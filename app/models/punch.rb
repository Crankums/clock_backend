class Punch < ApplicationRecord
    belongs_to :employee
    belongs_to :timecard

    scope :day, ->(date) { where("todays_date = ?", date)}

end
