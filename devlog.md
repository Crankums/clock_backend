Backend
~-add #destroy_all to seed file to prevent redundant DB entries~
~-convert "employee_id" and "job_id" columns into strings to prevent numeric type conversion. ~
~-implement faker gem~
    -Fix Faker parameters to eliminate titles/prefixes from names entered
-implement validations to model entries
    -Employee: 
        name: present, unique, no special characters besides "'"
        employee_id: present, unique, only numbers
        password: password ruleset or just presence: true?
        phone_number: 10-digit only
        email: should be provided by #email_builder method ("employee email")
        job_id: present, unique, only numbers
            -not going to bother with employee management system (job_id tables or generated numbers); these will be random values. 
~-add "t.datetime: todays_date" to Punch model~
~-attempt to implement GraphQL~
    ~-create punch and timecard objects~
    -determine what other query types should be made
~-play around with graphiql~
-admin layer? authorization to edit?


Frontend
Imports
-thunk middleware for api requests
-react router
-react router dom
-redux: reducer
-look up react bootstrap library
To do
~-create repo~

