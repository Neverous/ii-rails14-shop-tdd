require 'rails_helper'

RSpec.describe Product, :type => :model do
    it "product requires name, price, category" do
        product = Product.new()
        expect(product.valid?).to eq(false)

        product = Product.new(name: 'test')
        expect(product.valid?).to eq(false)

        product = Product.new(name: 'test', price: 3.14)
        expect(product.valid?).to eq(false)

        product = Product.new(name: 'test', price: 3.14, category_id: 777)
        expect(product.valid?).to eq(false)
    end

    it "valid product" do
        category = Category.create(name: 'test')
        product = Product.new(name: 'test', price: 3.14, category: category)
        expect(product.valid?).to eq(true)
    end
end
