Rails.application.routes.draw do
  
  match "/signout" => "sessions#destroy", via: [:get, :post]
  match "/adauth" => "sessions#create", via: [:get, :post]


  resources :sessions

  resources :home
  root to: 'home#index'
end
