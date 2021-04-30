class GuestBooksController < ApplicationController
    def index
        @guest_books = GuestBook.all
        @guest_books
    end

    def show
        @guest_book = GuestBook.find_by(id: params[:id])
        @guest_book
    end
end
