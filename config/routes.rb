Rails.application.routes.draw do
  resources :buses

  root 'buses#index'
end
