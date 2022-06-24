class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :date, :status, :summary, :reason_consultation, :type_consultation, :price, presence: true
  validates :doctor_id, :patient_id, presence: true
end
