require 'rails_helper'

RSpec.describe Category, :type => :model do
    it "category requires name" do
        category = Category.new()
        expect(category.valid?).to eq(false)
    end

    it "valid category" do
        category = Category.new(name: 'test')
        expect(category.valid?).to eq(true)
    end
end
