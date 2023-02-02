class Meal < ApplicationRecord

    validates :meals, :name, presence: true 
end
