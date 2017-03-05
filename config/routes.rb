Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root "users#index"
  resources :users, only: [:show] do
    resources :comments, only: [:create]
    resources :messages,  only: [:new, :create]
  end
  resources :reminds,  only: [:create]
end
