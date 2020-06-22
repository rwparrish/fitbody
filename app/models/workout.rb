class Workout < ApplicationRecord
   
    has_many :exercises
    has_many :users, through: :exercises
    accepts_nested_attributes_for :exercises

    validates :name, presence: true
   
end
