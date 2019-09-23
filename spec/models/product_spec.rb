require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    cat1 = Category.find_or_create_by! name: 'Apparel'
    cat1.products.new(name: "Sweatpants", description: "very comfortable, gary would approve", price_cents: 10000, quantity: 20)
  }
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
  end
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a price" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a category" do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end
end