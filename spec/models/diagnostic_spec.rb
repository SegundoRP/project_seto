require 'rails_helper'

RSpec.describe Diagnostic, type: :model do
  describe 'validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:description)
      should validate_presence_of(:patient_id)
    end

    it 'validate relations' do
      should belong_to(:patient)
    end
  end
end
