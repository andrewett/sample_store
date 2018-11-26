Rails.application.routes.draw do
  get 'user_index' => 'backroom#user_index'
  put 'upgrade_user' => 'backroom#upgrade_user'
  put 'downgrade_user' => 'backroom#downgrade_user'

  get 'delete_from_cart' => 'cart#delete_from_cart'
  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'
  put 'update_quant' => 'cart#update_quant'

  devise_for :users

  get root 'storefront#all_items'
  get 'categorical' => 'storefront#items_by_category'
  get 'branding' => 'storefront#items_by_brand'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
