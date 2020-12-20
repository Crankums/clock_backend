module Mutations
  class CreateTimecard < BaseMutation
    
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :timecard, Types::TimecardType, null: false
    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(employee_id:)
      {
        employee_id: employee_id
      }
    end
  end
end
