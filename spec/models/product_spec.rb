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
      expect(@product.errors.full_messages.empty?).to be false
    end

    it "is false with no price" do
    @category = Category.new
    @product = Product.new({
        name: "Anything",
        quantity: 10,
        category: @category
        })
      expect(@product.save).to be false
      expect(@product.errors.full_messages.empty?).to be false
    end

        it "is false with no quantity" do
    @category = Category.new
    @product = Product.new({
        name: "Anything",
        price: 30.00,
        category: @category
        })
      expect(@product.save).to be false
      expect(@product.errors.full_messages.empty?).to be false
    end

    it "is false with no category" do
    @category = Category.new
    @product = Product.new({
        name: "",
        price: 30.00,
        quantity: 10,
        })
      expect(@product.save).to be false
      expect(@product.errors.full_messages.empty?).to be false
    end

  end
end
  #pending "add some examples to (or delete) #{__FILE__}"
