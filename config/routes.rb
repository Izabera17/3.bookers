Rails.application.routes.draw do
  root to: "homes#top"
  get 'top' => 'homes#top', as: 'top_homes'
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  get 'books'  => 'books#index', as: 'index_books'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
