class Timecard < ApplicationRecord
    belongs_to :employee
    has_many :punches
   
    def day_checker(todays_date)
        day = Punch.day(todays_date)
    end

end