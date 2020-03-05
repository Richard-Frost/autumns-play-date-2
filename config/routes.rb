Rails.application.routes.draw do
  resources :children
  resources :families
  resources :users
  root to: 'static#welcome'

  get '/signup' => 'families#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
