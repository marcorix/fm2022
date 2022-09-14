Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :players, only: [:index, :show] do
    resources :favorites, only: [:create]
  end



  resources :team_players, only: [:destroy]

  resources :teams, only: [:index, :show, :new, :create] do
    resources :team_players, only: [:new, :create]
    resources :matches, only: :create
    get "favorites-add", to: "favorites#add"
    get "favorites-rem", to: "favorites#remove"
  end

  get "favorites", to: "favorites#index"

  resources :matches, only: [:index, :show]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
