require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "is true with valid attributes" do
    @category = Category.new
    @product = Product.new({
                name: "Anything",
                price: 30.00,
                quantity: 10,
                category: @category
                })
      expect(@product.save).to be true
      expect(@product.errors.full_messages.empty?).to be true
    end

    it "is false with no name" do
    @category = Category.new
    @product = Product.new({
                name: "",
                price: 30.00,
                quantity: 10,
                category: @category
                })

      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include "Name can't be blank"
    end

    it "is false with no price" do
    @category = Category.new
    @product = Product.new({
                name: "Anything",
                quantity: 10,
                category: @category
                })
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include "Price is not a number"
    end

        it "is false with no quantity" do
    @category = Category.new
    @product = Product.new({
                name: "Anything",
                price: 30.00,
                category: @category
                })
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include "Quantity can't be blank"
    end

    it "is false with no category" do
    @category = Category.new
    @product = Product.new({
                name: "",
                price: 30.00,
                quantity: 10,
                })
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include "Category can't be blank"
    end

  end
end
  #pending "add some examples to (or delete) #{__FILE__}"
