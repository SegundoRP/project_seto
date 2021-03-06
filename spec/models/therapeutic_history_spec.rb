require 'rails_helper'

RSpec.describe TherapeuticHistory, type: :model do
  describe 'validations' do
    it 'validate presence of require fields' do
      should validate_inclusion_of(:first_time_attention).in_array([true, false])
      should validate_presence_of(:events_in_life)
      should validate_presence_of(:familiar_antecedent)
    end

    it 'validate relations' do
      should belong_to(:patient)
    end
  end
end
