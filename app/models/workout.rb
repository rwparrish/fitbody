class Workout < ApplicationRecord
   
    has_many :exercises
    has_many :users, through: :exercises
    accepts_nested_attributes_for :exercises, reject_if: :all_blank
    validates_presence_of :name
   
end
