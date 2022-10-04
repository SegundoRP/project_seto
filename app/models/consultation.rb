class Consultation < ApplicationRecord
  belongs_to :doctor, inverse_of: :consultations
  belongs_to :patient, inverse_of: :consultations
  belongs_to :type_of_service

  validates :date, :status, :summary, :reason_consultation, :doctor, :patient, presence: true
  validates :date, :status, :summary, :reason_consultation, presence: { message: 'Debe estar presente' }
end
