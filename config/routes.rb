Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :spaces
  root 'general#index'
  get 'general/login_popup' => 'general#login_popup', defaults: { format: 'js' }
end
