Rails.application.routes.draw do
  get '/dogs/sorted', to: 'dogs#sorted', as: 'dogs_sorted'
  resources :dogs, only: [:index, :show, :dogs_sorted]
  resources :employees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
