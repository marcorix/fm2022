Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :players, only: [:index, :show]
  resources :team_players, only: [:destroy]

  resources :teams, only: [:index, :show, :new, :create] do
    resources :team_players, only: [:new, :create]
    resources :matches, only: :create
  end

  resources :matches, only: [:index, :show]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
