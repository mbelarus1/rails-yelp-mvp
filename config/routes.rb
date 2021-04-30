Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Get restaurants
  #get "restaurants", to: "restaurants#index"
  # Add a new restaurant, be redirected to the show view of restaurant
  #get "restaurants/new", to: "restaurants#new",  as: :new_restaurant
  #post "restaurants", to: "restaurants#create"
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  #get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # A visitor can add a new review to a restaurant
  # get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: :reviews
   resources :restaurants , only: [:new, :create, :index, :show] do
    resources :reviews, only: [ :index, :new, :create]
    end
end
