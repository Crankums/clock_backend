class Timecard < ApplicationRecord
    belongs_to :employee
    has_many :punches
   
    def day_valid(day)
        if day.include(type: "clockin") && day.include(type:"clockout")
            &&
        if clockout > clockin || if clockout > clockin && meal_start
    end


    def day_checker(todays_date)
        day = Punch.day(todays_date)

    end

end