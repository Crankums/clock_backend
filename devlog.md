Backend
~-add #destroy_all to seed file to prevent redundant DB entries~
~-convert "employee_id" and "job_id" columns into strings to prevent numeric type conversion. ~
~-implement faker gem~
    ~-Fix Faker parameters to eliminate titles/prefixes from names entered~
-implement validations to model entries
    -Employee:
        ONLY CERTAIN ATTRIBUTES NEED TO BE PRESENT ON CREATE 
            -the rest will have placeholders to be edited later
                -create an alert on employee account if attributes are not filled
        name: present, unique, no special characters besides "'"
        employee_id: present, unique, only numbers
        password: password ruleset or just presence: true? <--for now, present. Will validate later, after dumping db and rebuilding passwords using generators
            -bcrypt is currently in use, so even basic passwords are at least hashed
        phone_number: 10-digit only
        email: should be provided by #email_builder method ("employee email")
            if email builder does not create valid email, ask employee time provide leading value and use that
            ~=> MOVE EMAIL BUILDER FROM SEED.RB TO EMPLOYEE MODEL~
                -email and other data could also require admin approval, so maybe add :approved? attributes
        job_id: present, unique, only numbers
            -not going to bother with employee management system (job_id tables or generated numbers); these will be random values. 
    Punch:
        ~Employee must have all attributes filled in order to make punch~
            -changed attributes to [time, type, today's date, employee id, timecard id]. process has greatly simplified creating punches
        -Belongs to timecard; therefore, creates one if there isn't currently one.
        
    Timecard:
        current attributes are "week start" and "week end"
        has many Punches
        should there be a method for calling groups of punches within a certain range?
        Timecard might be more of a collection of methods, scope and otherwise, for calling groups of punches than it is an actual "object"
            -if this is the case, I will need to rewrite my timecard graphql objects
-Employee.new creates new timecard
~-add "t.datetime: todays_date" to Punch model~
~-attempt to implement GraphQL~
    ~-create punch and timecard objects~
    -determine what other query types should be made
~-play around with graphiql~
-admin layer: shows all employees, select employees, edit employee info, edit timecard.

-punches should show most recent punches ONLY, otherwise its just a timecard.
    -punch card is for one day, time card is cumulative (but usually just shows the week)
Punch card NOT valid unless it contains: clockin, [break start, clockin], clockout. Other punches could include PTO, vacation, no-pay, etc, implement those later

Frontend
Imports
-thunk middleware for api requests <--using graphql, so this may not be necessary
    -there is a REST config running parallel, but may do the whole thing in graphQL
-react router dom
~-redux: reducer~ <--using hooks, may still create state managemant
~-look up react bootstrap library~ <--using tailwind instead

