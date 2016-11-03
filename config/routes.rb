Rails.application.routes.draw do



  get 'results/index'

  resources :news_items, only: [:index, :show]
  resources :opinions, only: [:index, :show, :create]
  resources :items, only: [] do
    resources :orders, only: [:create]
  end
  get 'item/:id', to: 'items#show', as: 'show_item'
  get 'catalog', to: 'categories#index', as: 'catalog'
  root 'main#index'


  get '/catalog/:category_id', to: 'subcategories#index',as: 'subcategories'
  get '/catalog/:category_id/:subcategory_id', to: 'items#index',as: 'items'
  get '/catalog/:category_id/:subcategory_id/:id', to: 'items#show',as: 'item'

  get 'results', to: 'results#index', as: 'results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
