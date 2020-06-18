class Workout < ApplicationRecord
    belongs_to :category
    belongs_to :user
    belongs_to :exercise
    accepts_nested_attributes_for :exercise
end
