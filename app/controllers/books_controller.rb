class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def create
  	book = Book.new(book_params)
  	if book.save
  		flash[:notice] = "Book was successfully created."
  	    redirect_to book_path(book)
  	end
  end

  def update
  	book = Book.find(params[:id])
  	if book.update(book_params)
  		flash[:notice] = "Book was successfully updated."
  	    redirect_to book_path(book)
  	end
  end

  def destroy
  	book = Book.find(params[:id])
  	if book.destroy
  		flash[:notice] = "Book was successfully destroyed."
  	    redirect_to books_path
  	end
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end

end

#確認用http
#http://localhost:3000/books/
#Book was successfully created.
#Book was successfully updated.
#Book was successfully destroyed.

#2/19午後15時45分時点未実装機能
#css
#空白時エラー


