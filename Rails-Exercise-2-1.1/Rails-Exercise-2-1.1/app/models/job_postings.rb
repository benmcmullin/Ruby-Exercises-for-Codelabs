class JobPostings < ApplicationRecord
    validates :title, :company, :salary
end