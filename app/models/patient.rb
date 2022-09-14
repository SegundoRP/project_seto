class Patient < ApplicationRecord
  has_many :consultations
  has_many :diagnostics
  has_one :therapeutic_history

  accepts_nested_attributes_for :consultations, allow_destroy: true, reject_if: :all_blank

  validates :first_name, :last_name, :age, :email, :phone, :address, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
end
