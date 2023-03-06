Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :profile, only: [ :index, :show ]

  resources :plants, only: [ :new, :show ] do
    collection do
      get :map
    end
  end

  resource :user_plants, only: [:create]
  resources :favorites, only: [:destroy, :create]
  resources :lists, only: [:create, :update]
end
