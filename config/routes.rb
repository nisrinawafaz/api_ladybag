Rails.application.routes.draw do

  
  resources :feedbacks
  resources :line_item_clones
  resources :payments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :districts, only: [:index, :show]
  resources :statuses, only: [:index, :show]
  resources :users
  resources :line_items
  resources :carts
  resources :images, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "statics#home"
end
