class Activity < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
end
