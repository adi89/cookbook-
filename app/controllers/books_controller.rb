class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    book= Book.create(params[:book]) #create a book object and redirect to that utl of the new object.
    redirect_to(book) #this is the id page where we see the book you created.
  end

  def new
    @book= Book.new #duh, we want a blank objet so people will fill params into them
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book= Book.find(params[:id]) #from the url after clicking link on the index.
  end

  def update
    book= Book.find(params[:id]) #object
    book.update_attributes(params[:book])
    redirect_to(book)
  end

  def destroy
    book= Book.find(params[:id])
    book.delete
    redirect_to(books_path)
  end


end
