Rails.application.routes.draw do

  devise_for :users
  root to: "economies#index"
  resources :economies, only: [:new, :create, :destroy]

end
