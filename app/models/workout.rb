class Workout < ApplicationRecord
   
    has_many :exercises
    has_many :users, through: :exercises
    accepts_nested_attributes_for :exercises, reject_if: :all_blank
    validates_presence_of :name

    scope :most_recent, -> { where('DATE(created_at) >= ?', 7.days.ago) }
   
end
