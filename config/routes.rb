Rails.application.routes.draw do
  # root "articles#index"
  root "rooms#index"
  resources :rooms, only: %i[index new create show]
  resources :messages, only: %i[create show]
end
