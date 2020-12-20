class Mutations::CreatePunch < Mutations::BaseMutation
    argument :todays_date, DateTime, required: true
    argument :employee_id, Integer, required: true
    argument :punch_time, Time, required: true
    argument :punch_type, String, required: true

    field :punch, Types::PunchType, null: false
    field :errors, [String], null: false

    def resolve(todays_date:, employee_id:, punch_time:, punch_type:)
        employee = Employee.find(id: employee_id)
        if !employee.timecard
            employee.create_timecard(
                Date.today.beginning_of_week(:monday)
                week_start: date,
                week_end: date + 4
            )
        punch = employee.punch.build(
            todays_date: todays_date, 
            employee_id: employee_id, 
            punch_type: punch_type, 
            punch_time: punch_time
            timecard_id: employee.timecard.id
        )
        
        if punch.save 
            {
                punch: punch,
                errors: [],
            }
        else
            {
                punch: nil,
                errors: punch.errors.full_messages,
            }
        end
    end

end
