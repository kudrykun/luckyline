Rails.application.routes.draw do


  resources :news_items, only: [:index, :show]
  resources :opinions, only: [:index, :show, :create]
  resources :orders, only: [:create]
  root 'categories#index'


  get '/catalog/:category_id', to: 'subcategories#index',as: 'subcategories'
  get '/catalog/:category_id/:subcategory_id', to: 'items#index',as: 'items'
  get '/catalog/:category_id/:subcategory_id/:id', to: 'items#show',as: 'item'
  get '/order/:item_id/:id', to: 'order#create', as: 'order_item'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
