Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resource :profile, only: [:show], controller: "profile"

  resources :plants, only: [ :index, :new, :show, :create ] do
    collection do
      get :map
      get :results
    end
  end

  resource :user_plants, only: [:create]
  resources :favorites, only: [:destroy, :create]
  resources :lists, only: [:create, :update]
end
