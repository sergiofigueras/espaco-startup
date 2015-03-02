Rails.application.routes.draw do
  devise_for :users
  resources :spaces
  root 'general#index'
end
