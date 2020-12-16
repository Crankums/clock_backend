class Punch < ApplicationRecord
    belongs_to :employee
    belongs_to :timecard

end
