class Timecard < ApplicationRecord
    belongs_to :employee
    has_many :punches
   

end