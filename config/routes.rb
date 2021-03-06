Rails.application.routes.draw do
  post 'orders/new' => 'orders#new'
  resources :orders
  get 'search' => 'search#index'

  resources :food_items
  get 'home/index'

  get 'contact_us' => 'home#contact_us'

  get 'menu' => 'home#menu'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
