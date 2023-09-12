Rails.application.routes.draw do
  mount Filepond::Rails::Engine, at: '/filepond'

  root "rooms#index"

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :profiles, only: %i[show new create update]
  resources :rooms, only: %i[index new create show]
  resources :messages, only: %i[create]
end
