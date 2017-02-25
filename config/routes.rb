Rails.application.routes.draw do
  devise_for :users
  resources :asks do
  	member do
  		put "like", to: "asks#upvote"
  	end
  end

  root "asks#index"
end
