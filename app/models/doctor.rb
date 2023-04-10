class Doctor < ApplicationRecord
  belongs_to :user
  has_many :consultations, dependent: :destroy
  has_many :patients, through: :consultations

  validates :first_name, :last_name, :age, :profession, :specialty, :college_number, presence: true
end
