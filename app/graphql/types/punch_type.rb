module Types
  class PunchType < Types::BaseObject
    field :id, ID, null: false
    field :punch_time, Types::TimeType, null: true
    field :todays_date, GraphQL::Types::ISO8601Date, null: true
    field :punch_type, String, null: true
    field :employee_id, Integer, null: true
    field :timecard_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
