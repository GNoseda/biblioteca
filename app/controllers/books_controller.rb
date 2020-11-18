class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
      @books = Book.all
  end
  
  def show
  end

  def new
      @book = Book.new
  end

  def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to books_index_path, notice: 'Libro creado exitosamente'
      else
        flash.now[:alert] = 'Libro no pudo ser creado'
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :status, :lend_to, :lend_time, :return_time)
  end

end
