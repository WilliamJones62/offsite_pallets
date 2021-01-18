Rails.application.routes.draw do
  resources :offsite_pallets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'offsite_pallets#index'
end
