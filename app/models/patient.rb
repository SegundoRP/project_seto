class Patient < ApplicationRecord
  has_many :consultations
  has_many :diagnostics
  has_one :therapeutic_history

  # validates :first_name, :last_name, :age, :email, :phone, :address, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
end
