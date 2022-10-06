class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def index
    @book = Book.all
    @books = Book.new
  end
  
  def create
    @book = Book.all
    @books = Book.new(book_params)
    if @books.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@books)
    else
      render :index
    end
  end
  
  def show
    @books = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
