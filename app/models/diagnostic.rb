class Diagnostic < ApplicationRecord
  belongs_to :patient

  validates :description, :patient_id, presence: true
end
