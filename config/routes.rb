Rails.application.routes.draw do
  root "photos#index"
  devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  get":username/liked" => "photos#liked", as: :liked_photos
  get"/:username" => "users#show", as: :user
  get":username/feed" => "photos#feed", as: :feed_photos


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
