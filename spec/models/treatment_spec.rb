require 'rails_helper'

RSpec.describe Treatment, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:duration)
      should validate_presence_of(:start_time)
      should validate_presence_of(:about)
    end

    it 'validate relations' do
      belong_to(:consultation)
    end
  end
end
