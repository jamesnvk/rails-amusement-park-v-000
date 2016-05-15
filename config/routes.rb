Rails.application.routes.draw do

root 'site#index'
get '/signin', to: 'sessions#new'
post '/signin', to: 'sessions#create'
delete '/signout', to: 'sessions#destroy'
resources :users
resources :attractions, only: [:index, :show]

end