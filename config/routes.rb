Rails.application.routes.draw do
  resources :videos, only: %w(new index)

  root to: 'videos#index'
end
