Rails.application.routes.draw do
  root to: "homes#top"
 
  get 'books/new'
  post 'book/new'
  get 'books/show'
  get 'books/edit'
  get 'books'  => 'books#index', as: 'index_books'
  post 'create' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



  
