Rails.application.routes.draw do
  root to: "homes#top"
  get 'top' => 'homes#top', as: 'top_homes'
  get 'books/index'  => 'books#index', as: 'index_books'
  get 'books/show'
  get 'books/edit'
  get 'books/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
