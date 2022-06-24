require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'Validations' do
    it 'validate presence of require fields' do
      should validate_presence_of(:name)
      should validate_presence_of(:last_name)
      should validate_presence_of(:age)
      should validate_presence_of(:email)
      should validate_presence_of(:name)


    end
  end
end
