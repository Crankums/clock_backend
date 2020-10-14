module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :employee_id, Integer, null: true
    field :password_digest, String, null: true
    field :email, String, null: true
    field :phone_number, String, null: true
    field :job_id, Integer, null: true
    field :punches, [Types::PunchType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
