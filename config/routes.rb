Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :players, only: [:index, :show]

  resources :teams, only: [:index, :show, :new, :create] do
    resources :team_players, only: [:new, :create]
  end

  resources :team_players, only: [:destroy]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
