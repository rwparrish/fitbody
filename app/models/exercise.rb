class Exercise < ApplicationRecord
    
    belongs_to :user
    belongs_to :workout
    validates_presence_of :name

end
