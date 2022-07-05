require 'rails_helper'

RSpec.describe TypeOfService, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:name_of_service)
    end
  end
end
