class TherapeuticHistory < ApplicationRecord
  belongs_to :patient

  validates :first_time_attention, inclusion: { in: [true, false] }
end
