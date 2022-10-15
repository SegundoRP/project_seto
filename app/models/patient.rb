class Patient < ApplicationRecord
  has_many :consultations
  has_many :diagnostics
  has_one :therapeutic_history
  has_many :doctors, through: :consultations

  accepts_nested_attributes_for :consultations, reject_if: :all_blank?, allow_destroy: true

  validates :first_name, :last_name, :age, :email, :phone, :address, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
end
