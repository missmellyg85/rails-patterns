Rails.application.routes.draw do
  resources :patterns
  resources :brands
  root 'patterns#index'
end
