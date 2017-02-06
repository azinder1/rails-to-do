Rails.application.routes.draw do
  resources :lists do
    resources :chores
  end
end
