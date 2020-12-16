class Timecard < ApplicationRecord
    belongs_to :employee
    has_many :punches

    scope :day, ->(date) { where("todays_date = ?", date)}


    # valid punch_types: clock_in, clock_out, break_start
    # Rules: clock_out > clock_in,
    # Break: break_start > clock_in && must be followed by a clock_in
    # clock_in must be followed by clock_out
    # punches with matching "todays_date" will be collected into days, which will then make up the rest of the calendar 

end