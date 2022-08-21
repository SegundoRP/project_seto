class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :type_of_service

  # validates :date, :status, :summary, :reason_consultation, :price, presence: true
  # validates :doctor_id, :patient_id, presence: true
end
