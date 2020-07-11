class Activity < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    belongs_to :user
    self.per_page = 6
end
