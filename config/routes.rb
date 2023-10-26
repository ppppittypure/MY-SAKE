Rails.application.routes.draw do
  devise_for :users
  root to: "rankings#index"
  resources :rankings
  resources :users, only: :show
    #resources :purchases, only: [:index, :create]
  #end
  
  
end
