module Types
  class TimecardType < Types::BaseObject
    field :id, ID, null: false
    field :week_start, GraphQL::Types::ISO8601DateTime, null: true
    field :week_end, GraphQL::Types::ISO8601DateTime, null: true
    field :employee_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
