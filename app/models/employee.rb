class Employee < ApplicationRecord
    has_secure_password
    has_many :punches
    has_one :timecard

    def email_builder(string)
        name_arr = string.split(' ')
        lead = name_arr[0][0]+name_arr[1]
        lead.downcase+"@clocko.com"
    end 
end
