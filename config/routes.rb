Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  devise_for :users
  root to: "pages#home"
  resources :players, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
