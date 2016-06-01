Rails.application.routes.draw do
  root 'shoes#index'

  get 'shoes/:id' => 'shoes#show', as: :shoe

end
