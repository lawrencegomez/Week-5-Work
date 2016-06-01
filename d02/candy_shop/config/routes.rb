Rails.application.routes.draw do
  root 'candies#index'

  get 'candies/:id' => 'candies#show', as: :candy

end
