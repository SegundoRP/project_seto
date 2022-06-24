require 'rails_helper'

RSpec.describe Consultation, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:date)
      should validate_presence_of(:status)
      should validate_presence_of(:summary)
      should validate_presence_of(:reason_consultation)
      should validate_presence_of(:type_consultation)
      should validate_presence_of(:price)
    end

    it 'validate relations' do
      should belong_to(:doctor)
      should belong_to(:patient)
    end
  end
end
