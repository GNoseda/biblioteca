class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @q = Book.ransack(params[:q])  
    @books = @q.result(distinct: true).page(params[:page])

  end
  
  def show
  end

  def new
      @book = Book.new
  end

  def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to books_path, notice: 'Libro creado exitosamente'
      else
        flash.now[:alert] = 'Libro no pudo ser creado'
        render :new
      end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'Libro actualizado exitosamente'
    else
      flash.now[:alert] = 'Libro no pudo ser actualizado'
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: 'Libro destruido!'
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :status, :lend_to, :lend_time, :return_time)
  end

end
