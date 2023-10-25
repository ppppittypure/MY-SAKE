Rails.application.routes.draw do
  devise_for :users
  root to: "sakes#index"
  resources :sakes
  resources :users, only: :show
    #resources :purchases, only: [:index, :create]
  #end
  
  
end
