Rails.application.routes.draw do
  get 'reviews/create'
  root to: 'restaurants#index'
  # resources :restaurants

  # As a user, I would like to create a new review for a restaurant
  # go to the page of a restaurant
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:create]
  end
  # fill in a form to leave a review and submit it
  # redirect me to the restaurant page
end
