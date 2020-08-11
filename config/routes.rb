Rails.application.routes.draw do
  get 'donations/index'
  root to: 'donations#index'
  resources :donations, only: [:index, :new, :create]
end
