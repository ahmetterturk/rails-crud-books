class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @book.save 
            redirect_to books_path
        else
            redirect_to books_new_path
            flash.now[:alert] = 'Error while creating book!'
        end 
    end

    def edit 
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to book_path(@book)
        else
            redirect_to edit_book_path(@book)
            flash.now[:alert] = 'Error while editing book!'
        end
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        redirect_to books_path
    end

    private
    def book_params
        params.require(:book).permit(:name, :author, :description, :year)
    end
end
