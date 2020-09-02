class Employee < ApplicationRecord
    has_many :punches
    has_one :timecard
end
