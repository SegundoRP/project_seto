Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'pages#dashboard'
  resources :patients do
    resources :diagnostics do
      resources :treatments
    end
    resources :therapeutics_history
  end
  resources :consultations
  resources :doctors
  resources :type_of_services
end
