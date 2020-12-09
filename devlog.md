Backend
~-add #destroy_all to seed file to prevent redundant DB entries~
~-convert "employee_id" and "job_id" columns into strings to prevent numeric type conversion. ~
~-implement faker gem~
    ~-Fix Faker parameters to eliminate titles/prefixes from names entered~
-implement validations to model entries
    -Employee:
        ONLY CERTAIN ATTRIBUTES NEED TO BE PRESENT ON CREATE 
        name: present, unique, no special characters besides "'"
        employee_id: present, unique, only numbers
        password: password ruleset or just presence: true?
        phone_number: 10-digit only
        email: should be provided by #email_builder method ("employee email")
            if email builder does not create valid email, ask employee time provide leading value and use that
            => MOVE EMAIL BUILDER FROM SEED.RB TO EMPLOYEE MODEL
        job_id: present, unique, only numbers
            -not going to bother with employee management system (job_id tables or generated numbers); these will be random values. 
    Punch:
        Employee must have all attributes filled in order to make punch
-Employee.new creates new timecard
~-add "t.datetime: todays_date" to Punch model~
~-attempt to implement GraphQL~
    ~-create punch and timecard objects~
    -determine what other query types should be made
~-play around with graphiql~
-admin layer? authorization to edit?
-create timecards for employees. what's the difference between timecard and punches? is this a front-end only thing or should there be a back-end presence as well?
-punches should show most recent punches ONLY, otherwise its just a timecard.


Frontend
Imports
-thunk middleware for api requests
-react router
-react router dom
-redux: reducer
-look up react bootstrap library
To do
~-create repo~

