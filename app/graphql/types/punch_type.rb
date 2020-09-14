module Types
  class PunchType < Types::BaseObject
    field :id, ID, null: false
    field :clock_in, GraphQL::Types::ISO8601DateTime, null: true
    field :clock_out, GraphQL::Types::ISO8601DateTime, null: true
    field :break_start, GraphQL::Types::ISO8601DateTime, null: true
    field :employee_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :todays_date, GraphQL::Types::ISO8601DateTime, null: true

    def last_punch
      object.first
    end
  end
end
