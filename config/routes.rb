Rails.application.routes.draw do
  resources :videos, only: %w(new index)
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#fail'

  root to: 'videos#index'
end
