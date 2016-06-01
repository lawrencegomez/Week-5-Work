Rails.application.routes.draw do

  root 'welcome#home'
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'

end
