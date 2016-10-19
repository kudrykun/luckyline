Rails.application.routes.draw do


  resources :news_items, only: [:index, :show]
  resources :opinions, only: [:index, :show, :create]
  resources :items, only: [] do
    resources :orders, only: [:create]
  end
  root 'categories#index'


  get '/catalog/:category_id', to: 'subcategories#index',as: 'subcategories'
  get '/catalog/:category_id/:subcategory_id', to: 'items#index',as: 'items'
  get '/catalog/:category_id/:subcategory_id/:id', to: 'items#show',as: 'item'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
