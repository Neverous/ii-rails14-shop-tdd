require 'rails_helper'

RSpec.describe "basic interaction", :type => :request do
    category = Category.create(name: 'test')
    product = Product.create(name: 'test2', price: 2.57, category: category)
    it 'add product to cart' do
        put '/shop/cart/' + product.id.to_s
        expect(response).to have_http_status(:success)
        expect(assigns(:products)).to match_array([product])
    end

    it 'remove product from cart' do
        put '/shop/cart/' + product.id.to_s
        delete '/shop/cart/' + product.id.to_s
        expect(response).to have_http_status(:success)
        expect(assigns(:products)).to match_array([])
    end
end
