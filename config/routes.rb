Tupac::Application.routes.draw do

  devise_for :users

  devise_for :users, :skip => :registrations

  resources :libraries

  root :to => 'home#index'

end
