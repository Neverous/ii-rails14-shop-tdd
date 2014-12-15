class ShopController < ApplicationController
  def index
      @categories = Category.all
  end

  def product
      @product = Product.find(params[:id])
  end

  def cart
      session[:cart] ||= []
      if request.put?
          session[:cart] << params[:id]
      end

      if request.delete?
          session[:cart].delete_at session[:cart].find_index(params[:id])
      end

      @products = session[:cart].map { |id| Product.find(id) }
  end
end
