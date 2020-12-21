Rails.application.routes.draw do
  resources :comments
  resources :comment_threads
  resources :results
  resources :albums
  resources :losses
  resources :wins
  resources :polls
  resources :masters
  resources :mixes
  resources :vocals
  resources :beats
  resources :ref_songs
  resources :ref_imgs
  resources :songs
  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
