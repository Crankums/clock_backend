module Checkable

    
    # day scope method where(date){'todays_date = ?', date}

    # Timecard checking rules:
    # -clockin > clockout
    # -break start > clockin && break start < clockout
    # -all "days" must include clockin && clockout 
    #     -otherwise day.status == 'invalid'
       
end