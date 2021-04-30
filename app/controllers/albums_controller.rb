class AlbumsController < ApplicationController
    before_action :load_albums, only: [:index]
    before_action :load_album, only: [:show]

    def index
    end

    def create
        album_name = params[:album][:name]
        artist_name = params[:album][:artist_name]
        new_album = Album.create(name: album_name, artist_name: artist_name)
        redirect_to :albums
    end

    def show
        @songs = @album.songs
    end

    private

    def load_albums
        @albums = Album.all
    end

    def load_album
        @album_id = params[:id]
        @album = Album.where(id: @album_id).first
    end
end
