Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :players, only: [:index, :show]

  resources :teams, only: [:show, :new, :create] do
    resources :team_players, only: [:new, :create]
  end
end
