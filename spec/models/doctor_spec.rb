require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:first_name)
      should validate_presence_of(:last_name)
      should validate_presence_of(:age)
      should validate_presence_of(:profession)
      should validate_presence_of(:specialty)
      should validate_presence_of(:college_number)
      # should validate_presence_of(:user_id)
    end

    it 'validate relations' do
      should belong_to(:user)
    end
  end
end
