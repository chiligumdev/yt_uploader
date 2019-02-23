Rails.application.routes.draw do
  resources :videos, only: %w(new index)
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#fail'
  post '/videos/get_upload_token', to: 'videos#get_upload_token', as: :get_upload_token
  get '/videos/get_video_uid', to: 'videos#get_video_uid', as: :get_video_uid

  root to: 'videos#index'
end
