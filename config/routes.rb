Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
