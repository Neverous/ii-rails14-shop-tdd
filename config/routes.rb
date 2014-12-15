Rails.application.routes.draw do
    root 'shop#index'
    get 'shop/index'

    get 'shop/product/:id', to: 'shop#product', as: 'shop_product'

    get 'shop/cart'
    put 'shop/cart/:id', to: 'shop#cart', as: 'shop_cart_add'
    delete 'shop/cart/:id', to: 'shop#cart', as: 'shop_cart_delete'
end
