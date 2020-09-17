Rails.application.routes.draw do
  resources :artists
  resources :topics
  resources :genres
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
