Tupac::Application.routes.draw do

  resources :libraries

   root :to => 'home#index'

end
