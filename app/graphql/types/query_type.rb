module Types
  class QueryType < Types::BaseObject
    
    field :employees, [Types::EmployeeType], null: false

    def employees
      Employee.all
    end
    
    field :employee, Types::EmployeeType, null: false do
      argument :id, ID, required: true
    end

    def employee(id:)
      Employee.find(id)
    end

    
  
  end
end
