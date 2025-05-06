class BooksController < ApplicationController
  def newBook
    @authors = Author.all
  end

  def create
    @book = Book.new(params.require(:book).permit(:book_title, author_ids: []))
    @book.save
    redirect_to "/books/listBooks"
  end

  def listBooks
    @books=Book.all
  end

  def editBook
    @book = Book.find(params[:id])
    @authors =Author.all
  end

  def updateBook
    @book = Book.find(params[:id])
    if @book !=nil
      @book.update(params.require(:book).permit(:book_title, author_ids: []))
      redirect_to "/books/listBooks"
    else
      redirect_to "/books/editbook/#{@book.id}"
    end
  end

  def deleteBook
    @book = Book.find(params[:id])
    if @book!=nil
      @book.destroy
      redirect_to "/books/listBooks"
    end
  end


  def books
    book = Book.find(params[:id])
    render json: book.to_json(include: :authors)
  end
end
