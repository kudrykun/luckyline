Rails.application.routes.draw do

  devise_for :users, :skip => [:sessions]
  as :user do
    get 'login' => 'devise/sessions#new', :as => :new_user_session
    post 'login' => 'devise/sessions#create', :as => :user_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  root 'main#index' #Главная
  get 'contacts/show' #Контакты
  get 'results/index' #Результаты поиска
  get 'results', to: 'results#index', as: 'results' #Результаты поиска
  get 'item/:id', to: 'items#show', as: 'show_item' #Показ итема с главной
  get 'gallery/:id', to: 'galleries#show', as: 'show_gallery' #Показ итема с главной
  get 'catalog/:category_id/item/:id', to: 'items#show', as: 'show_category_item' #показ итема из каталога
  get 'catalog/:category_id/gallery/:id', to: 'galleries#show', as: 'show_category_gallery' #показ итема из каталога
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
    resources :items
    resources :categories
    resources :news_items
    resources :opinions
    resources :orders
    resources :galleries
    resources :finished_orders
    resources :pictures, only: [:destroy,:update,:edit]
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
