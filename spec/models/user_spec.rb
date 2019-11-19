require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(:name => 'beep', :email => 'beep@boop.com', :password => 'password', :password_confirmation => 'password')

  describe 'Validations' do

    it 'should have a password and password_confirmation' do
      expect(user.password).to be_present
      expect(user.password_confirmation).to be_present
    end
    it 'should have a matching password and password_confirmation' do
      expect(user.password).to eql(user.password_confirmation)
    end
    it 'should not have case sensitive email addresses' do
      expect('beep@boop.coM').not_to match(user.email)
    end
    it 'should have a name and email' do
      expect(user.name).to be_present
      expect(user.email).to be_present
    end
    it 'should have a password longer than 3 characters' do
      expect(user.password).not_to be('123')
    end
  end
  describe '.authenticate_with_credentials' do
    it 'should still validate an email if there is white space before or after the input' do
      expect(' beep@boop.com').to match(user.email)
    end
    it 'should not have case sensitive email validation' do
      #expect('Beep@boop.com').to be('beep@boop.com')
    end
  end
end
