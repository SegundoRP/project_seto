class Treatment < ApplicationRecord
  belongs_to :diagnostic

  validates :duration, :start_time, :about, presence: true
end
