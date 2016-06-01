Rails.application.routes.draw do

  root 'cats#index'

  get '/cats' => 'cats#index'

  get '/cats/new' => 'cats#new', as: :new_cat

  # no need for a /cats/create, just /cats because when we create a new cat
  # we are posting to all the cats, which is located in just /cats
  post '/cats' => 'cats#create'

  get '/cats/:id' => 'cats#show', as: :cat

  get '/cats/:id/edit' => 'cats#edit', as: :edit_cat

  # we are using 'patch' because there is already an existing resource in our database that we want
  # to edit, versus 'put'which doesn't care whether or not there is an existing resource in the database
  patch '/cats/:id' => 'cats#update'

  delete '/cats/:id' => 'cats#destroy', as: :destroy_cat

  # this is called RESTful routing, based on how it's setup

end

#order of how these are placed matters a lot! REMEMBER THAT! new goes before show
