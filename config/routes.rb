Rails.application.routes.draw do
  resources :asks

  root "asks#index"
end
