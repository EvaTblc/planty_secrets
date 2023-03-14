Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resource :profile, only: [:show], controller: "profile"

  resources :user, except: [:index, :new, :create, :update, :edit, :show, :destroy] do
    resources :lists, only: [:create, :update, :show] do
      resources :bookmarks, only: [:create, :destroy]
    end
  end

  resources :plants, only: [ :index, :new, :show, :create ] do
    collection do
      get :map
      get :results
    end

    resources :favorites, only: [:create]
  end

  resource :user_plants, only: [:create, :update]
  resources :favorites, only: [:destroy]
end
