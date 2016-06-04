Rails.application.routes.draw do

  # resources takes care of the controller functions for whatever model you pass it,
  # which in this case is the users model (as RESTful too :-) )
  resources :users

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create] # this is how you tell Rails what resources you want to
                                            # to be automatically created

  resources :blurbs

end
