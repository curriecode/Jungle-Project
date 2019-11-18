require 'rails_helper'

RSpec.describe Product, type: :model do
  # subject { described_class.new(name: "some name", price: 100, quantity: 4, category: "furniture") }

  describe 'Validations' do
    it "should have a valid name" do
      @product = Product.new
      @product.name = "SomeName"
      expect(@product.name).to be_present
    end
    it "should have a valid price" do
    @product = Product.new
    @product.price = 200
    expect(@product.price).to be_present
    end
    it "should have a valid quantity" do
      @product = Product.new
      @product.quantity = 4
      expect(@product.quantity).to be_present
    end
    it "should have a valid category" do 
      @product = Product.new
      @product.category_id = 1
      expect(@product.category_id).to be_present
    end
  end
end

# validates, name: presece:true
# validates, price: presece:true
# validates, quantity: presece:true
# validates, category: presece:true
