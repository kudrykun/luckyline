Rails.application.routes.draw do
  #Вход и выход из админки
  devise_for :users, :skip => [:sessions]
  as :user do
    get 'login' => 'devise/sessions#new', :as => :new_user_session
    post 'login' => 'devise/sessions#create', :as => :user_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  root 'main#index' #Главная
  get 'contacts', to: 'contacts#show', as: 'contacts' #Контакты
  get 'results', to: 'results#index', as: 'results' #Результаты поиска
  get 'item/:id', to: 'items#show', as: 'show_item' #Товар
  get 'gallery/:id', to: 'galleries#show', as: 'show_gallery' #Галерея
  get 'catalog', to: 'categories#show', as: 'catalog', defaults: {id: 'catalog'} #Каталог
  get 'catalog/:id', to: 'categories#show',as: 'subs_and_items' #показ подкатегорий
  resources :news_items, only: [:index, :show] #акции
  resources :orders, only: [:create] # создание заказов
  resources :opinions, only: [:index, :create] #отзывы и создание отзывов
  resources :items, only: [] do
    resources :orders, only: [:create]  #создание заказа из товара
  end
  match "description_pictures" => "description_pictures#create", via: :post


  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :items
    resources :categories
    resources :news_items
    resources :opinions
    resources :orders
    resources :galleries
    resources :pictures, only: [:destroy,:update,:edit]
  end
end
