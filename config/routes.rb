Rails.application.routes.draw do
  root 'books#index'

  get 'books', to: 'books#index'

  get 'books/new', to: 'books#new' #creacion de libros
  post 'books', to: 'books#create' #pantalla posterior a creacion de libros
  
  get 'books/:id', to: 'books#show' #menú de libros
  
  get 'books/:id/edit', to: 'books#edit' #Edición de libros y estados
  patch 'books/:id', to: 'books#update'  #pantalla psoterior a libros y estados
  
  delete 'books/:id', to: 'books#destroy' #destrucción de libros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end