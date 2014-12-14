Rails.application.routes.draw do
    root 'shop#index'
    get 'shop/index'
    get 'shop/product'
    get 'shop/cart'
    put 'shop/cart'
    delete 'shop/cart'
end
