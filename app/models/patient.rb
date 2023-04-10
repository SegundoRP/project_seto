class Patient < ApplicationRecord
  has_many :consultations, dependent: :destroy
  has_many :diagnostics, dependent: :destroy
  has_one :therapeutic_history, dependent: :destroy
  has_many :doctors, through: :consultations

  accepts_nested_attributes_for :consultations, reject_if: :all_blank?, allow_destroy: true

  validates :first_name, :last_name, :age, :email, :phone, :address, presence: true
end
