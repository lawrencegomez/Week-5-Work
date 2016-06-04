Rails.application.routes.draw do
  root 'welcome#index'

  get '/vampires' => 'vampires#index'

  post '/vampires' => 'vampires#create'

  get '/vampires/new' => 'vampires#new', as: :new_vampire

  get '/vampires/:id/edit' => 'vampires#edit', as: :edit_vampire

  get '/vampires/:id' => 'vampires#show', as: :vampire

  patch '/vampires/:id' => 'vampires#update'

  delete '/vampires/:id' => 'vampires#destroy', as: :destroy_vampire

end
