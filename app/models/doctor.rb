class Doctor < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :patients, through: :consultations
  # validates :first_name, :last_name, :age, :profession, :specialty, :college_number, :user_id, presence: true
end
