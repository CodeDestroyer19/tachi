Rails.application.routes.draw do
  resources :users
  resources :ai_helpers
  root "home#index"
  get "home/About"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
