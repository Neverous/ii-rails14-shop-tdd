require 'rails_helper'

RSpec.describe ShopController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET product" do
    it "returns http success" do
      get :product
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET cart" do
    it "returns http success" do
      get :cart
      expect(response).to have_http_status(:success)
    end
  end

end