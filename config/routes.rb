Rails.application.routes.draw do
  get 'books/new'
  root to: 'homes#top'
  get 'books/index'=>'books#index'
  post 'books'=>'books#create'
  get 'books'=>'books#index', as: 'index_book'
  get 'books/:id/show'=>'books#show', as: 'show_book'
  get 'books/:id/edit'=>'books#edit', as: 'edit_book'
  patch 'books/:id'=>'books#update', as: 'update_book'
  delete 'books/:id'=>'books#destroy', as: 'destroy_book'
  resources :books
end
