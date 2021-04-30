class GuestBookEntriesController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]
    before_action :load_guest_book

    def index
        render "index", layout: false
    end

    def create
        person_name = params[:guest_book_entry][:person_name]
        entry_body = params[:guest_book_entry][:body]
        new_entry = @guest_book.guest_book_entries.create(person_name: person_name, body: entry_body)
        redirect_to guest_book_path(@guest_book)
    end

    private

    def load_guest_book
        guest_book_id = params[:guest_book_id]
        @guest_book = GuestBook.find_by(id: guest_book_id)
    end
end
