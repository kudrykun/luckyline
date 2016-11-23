Rails.application.routes.draw do


  namespace :admin do
    get 'orders/index'
  end

  root 'main#index' #Главная
  get 'contacts/show' #Контакты
  get 'results/index' #Результаты поиска
  get 'results', to: 'results#index', as: 'results' #Результаты поиска
  get 'item/:id', to: 'items#show', as: 'show_item' #Показ итема с главной
  get 'catalog/:category_id/:id', to: 'items#show', as: 'show_category_item' #показ итема из каталога
  get 'catalog', to: 'categories#index', as: 'catalog' #Каталог
  get '/catalog/:id', to: 'categories#show',as: 'subs_and_items' #показ подкатегорий
  resources :news_items, only: [:index, :show]
  resources :orders, only: [:create]
  resources :opinions, only: [:index, :show, :create]
  resources :items, only: [] do
    resources :orders, only: [:create]
  end

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :items, only: [:index]
    resources :categories, only: [:index]
    resources :news_items, only: [:index]
    resources :opinions, only: [:index]
    resources :orders, only: [:index]
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
