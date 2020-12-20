module Types
  class MutationType < Types::BaseObject
    field :create_timecard, mutation: Mutations::CreateTimecard
    field :create_employee, mutation: Mutations::CreateEmployee
    field :create_punch, mutation: Mutations::CreatePunch
  end
end
