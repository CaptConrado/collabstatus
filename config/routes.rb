RailsDevisePundit::Application.routes.draw do
  resources :assets

  resources :videos

  resources :channels

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end