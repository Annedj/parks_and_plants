Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create] # need to know the garden associated
  end
  resources :plants, only: [:destroy] # just need to know the id of the plant to delete
end
