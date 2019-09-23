require 'rails_helper'

RSpec.describe User, type: :model do
    subject {
      User.new(first_name: "Joshua", last_name: "McGee", email: "TEST@TEST.com", password: "123", password_confirmation: "123")
    }
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "should have a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end
    it "giving the incorrect password confirmation should return false" do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end
    it "too small of a password should give an error" do
      subject.password = "1"
      subject.password_confirmation = "1"
      expect(subject).to_not be_valid
    end
  end

  describe 'when email address is already taken' do
    before do
      user_with_same_email = subject.dup
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

end