class Employee < ApplicationRecord
    has_secure_password
    has_many :punches
    has_one :timecard
end
