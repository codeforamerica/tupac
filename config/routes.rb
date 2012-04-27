Tupac::Application.routes.draw do

  devise_for :users

  resources :libraries

   root :to => 'home#index'

end
