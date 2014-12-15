require 'rails_helper'

RSpec.describe ShopController, :type => :controller do

    describe "index" do
        it "returns http success" do
            get :index
            expect(response).to have_http_status(:success)
        end
    end

    describe "product" do
        category = Category.create(name: 'test')
        product = Product.create(name: 'test', price: 2.14, category: category)
        it "get returns http success" do
            get :product, id: product.id
            expect(response).to have_http_status(:success)
        end
    end

    describe "cart" do
        category = Category.create(name: 'test')
        product = Product.create(name: 'test', price: 2.14, category: category)
        it "get returns http success" do
            get :cart
            expect(response).to have_http_status(:success)
        end

        it "put returns http success" do
            put :cart, id: product.id
            expect(response).to have_http_status(:success)
        end

        it "delete returns http success" do
            put :cart, id: product.id
            delete :cart, id: product.id
            expect(response).to have_http_status(:success)
        end
    end

end
