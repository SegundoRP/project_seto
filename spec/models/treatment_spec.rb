require 'rails_helper'

RSpec.describe Treatment, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:duration)
      should validate_presence_of(:start_time)
      should validate_presence_of(:about)
      should validate_presence_of(:status)
    end

    it 'validate relations' do
      should belong_to(:diagnostic)
    end
  end
end
