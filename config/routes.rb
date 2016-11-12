Rails.application.routes.draw do
  resources :websites
  devise_for :users
  root "websites#index"
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
