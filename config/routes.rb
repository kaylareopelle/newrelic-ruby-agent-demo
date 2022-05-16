Rails.application.routes.draw do
  root "home#index"

  resources :pokemon
  resources :apm_logs_in_context, only: [:index, :show]
  resources :generate_traffic, only: [:index]
  resources :async, only: [:index]
end
