class TherapeuticHistory < ApplicationRecord
  belongs_to :patient

  validates :first_time_attention, inclusion: { in: [true, false] }
  validates :events_in_life, :familiar_antecedent, presence: true
end
