class Treatment < ApplicationRecord
  belongs_to :consultation

  validates :duration, :start_time, :about, :consultation_id, presence: true
end
