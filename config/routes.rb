Rails.application.routes.draw do
  root 'books#index'

  get 'books/index'
  get 'books/show' #menú de libros
  get 'books/new' #creacion de libros
  get 'books/create' #pantalla posterior a creacion de libros
  get 'books/edit' #Edición de libros y estados
  get 'books/update' #pantalla psoterior a libros y estados
  get 'books/destroy' #destrucción de libros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
