require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with all valid attributes" do
      @category = Category.new(name: "test1")
      @product = Product.new(name: "test2", price: 10, quantity: 5, category: @category)
      expect(@product).to be_valid
    end

    it "is not valid without a name" do
      @category = Category.new(name: "test1")
      @product = Product.new(price: 10, quantity: 5, category: @category)
      expect(@product).to_not be_valid
    end

    it "is not valid without any quantity" do
      @category = Category.new(name: "test1")
      @product = Product.new(name: "test2", price: 10, category: @category)
      expect(@product).to_not be_valid
    end

    it "is not valid without a category" do
      @category = Category.new(name: "test1")
      @product = Product.new(name: "test2", price: 10, quantity: 5)
      expect(@product).to_not be_valid
    end

    it "is not valid without a price" do
      @category = Category.new(name: "test1")
      @product = Product.new(name: "test2", quantity: 5, category: @category)
      expect(@product).to_not be_valid
    end
  end
end
