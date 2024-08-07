Rails.application.routes.draw do
  # resources :notes
  # root to: 'static_pages#index'
  devise_for :users    

  get 'welcome/index'
  resources :notes

  authenticated :user do
    root "notes#index", as: "authenticated_root"
  end
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  root "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
