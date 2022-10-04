class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :type_of_service

  validates :date, :status, :summary, :reason_consultation, presence: true
  validates :date, :status, :summary, :reason_consultation, presence: { message: 'Debe estar presente' }
end
