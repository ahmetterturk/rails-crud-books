Rails.application.routes.draw do
  devise_for :users
  
  get '/', to: 'books#index'
  # get '/books', to: 'books#index'
  # get '/books/new', to: 'books#new' 
  # post '/books', to: 'books#create'
  # get '/books/:id', to: 'books#show', as: 'book'
  # get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  # put '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'

  resources :books
end
