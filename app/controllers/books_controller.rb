class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def index
    @book = Book.all
    @books = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end
  
  def show
    @books = Book.find(params[:id])
  end
  

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
