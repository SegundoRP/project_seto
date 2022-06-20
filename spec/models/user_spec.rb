require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:first_name)
      should validate_presence_of(:last_name)
      should validate_presence_of(:email)
      should validate_presence_of(:username)
    end

    it 'validate relations' do
      should have_many(:doctors)
    end
  end
end
