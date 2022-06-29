require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:first_name)
      should validate_presence_of(:last_name)
      should validate_presence_of(:age)
      should validate_presence_of(:email)
      should validate_presence_of(:phone)
      should validate_presence_of(:address)
    end

    it 'validate relations' do
      should have_many(:consultations)
      should have_many(:diagnostics)
      should have_one(:therapeutic_history)
    end
  end
end
