Rails.application.routes.draw do
  resources :cryptos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "cryptos#index"
end
