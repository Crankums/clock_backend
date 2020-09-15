class Mutations::Punch < Mutations::BaseMutation
    argument :todays_date, Datetime, required: true
    argument :employee_id, Integer, required: true

    field :punch, Types::PunchType, null: false
    field :errors, [String], null: false

    def resolve(todays_date:, employee_id:)
        employee = Employee.find(id: employee_id)
        punch = employee.punch.build(todays_date: todays_date, employee_id: employee_id)
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
