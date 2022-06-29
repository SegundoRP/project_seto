require 'rails_helper'

RSpec.describe Therapeutic_history, type: :model do
  describe 'validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:first_time_attention)
      should validate_presence_of(:events_in_life)
      should validate_presence_of(:familiar_antecedent)
    end

    it 'validate relations' do
      belong_to(:patient)
    end
  end
end
