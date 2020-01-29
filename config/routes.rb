# Routes should exactly mirror your product’s user stories. So let’s define our minimal product here:

# A visitor can see the list of all restaurants.
# GET "restaurants"
# She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# She/He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# She/He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"

Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
end
