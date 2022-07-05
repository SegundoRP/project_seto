class TypeOfService < ApplicationRecord
 has_many :consultations

  validates :name_of_service, presence: true
end
