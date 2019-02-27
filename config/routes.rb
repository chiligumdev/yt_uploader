Rails.application.routes.draw do
  resources :video_uploads, only: [:new, :create]
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  resources :videos, only: [:index, :new, :create]
  root to: 'videos#index'
end
