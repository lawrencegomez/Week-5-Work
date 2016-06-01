Rails.application.routes.draw do
  get '/cats' => 'cats#index'

  get '/cats/new' => 'cats#new', as: :new_cat

  # no need for a /cats/create, just /cats because when we create a new cat
  # we are posting to all the cats, which is located in just /cats
  post '/cats' => 'cats#create'

  get '/cats/:id' => 'cats#show', as: :cat
end

#order of how these are placed matters a lot! REMEMBER THAT! new goes before show
