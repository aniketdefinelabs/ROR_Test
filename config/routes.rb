Rails.application.routes.draw do
  get "books/newBook"
  post "books/create"
  get "books/listBooks"
  get "books/editBook/:id", to: "books#editBook"
  delete "books/deleteBook/:id", to: "books#deleteBook"
  patch "books/updateBook/:id", to: "books#updateBook"



  get "authors/new"
  post "authors/create"
  get "authors/listAuthor"
  get "authors/editAuthor/:id", to: "authors#editAuthor"
  patch "authors/update/:id", to: "authors#update"
  delete "authors/deleteAuthor/:id", to: "authors#delete"

  root "authors#new"

  get "authors/:id", to: "authors#authors"
  get "books/:id", to: "books#books"
end
