Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :rooms, only: %i[index new create show]
  resources :messages, only: %i[create]
end
