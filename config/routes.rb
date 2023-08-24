Rails.application.routes.draw do
  root "rooms#index"

  devise_for :users, controllers: { sessions: "users/sessions" }
  
  resources :rooms, only: %i[index new create show]
  resources :messages, only: %i[create]
end
