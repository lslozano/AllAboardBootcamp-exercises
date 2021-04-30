class SongsController < ApplicationController
    before_action :load_album 

    def new
    end

    def create
        song_name = params[:song][:name]
        @album.songs.create(name: song_name)
        redirect_to album_path(@album)
    end

    private

    def load_album
        album_id = params[:album_id]
        @album = Album.where(id: album_id).first
    end
end
