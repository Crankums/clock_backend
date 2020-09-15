class Mutations::CreateEmployee < Mutations::BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true

    field :employee, Types::EmployeeType, null: false
    field :errors, [String], null: false

    def resolve(name:, email:)
        employee = Employee.new(name: name, email: email)
        if employee.save
            {
                employee: employee,
                errors: [],
            }
        else
            {
                employee:nil,
                errors: employee.errors.full_messages
            }
        end
    end
end
