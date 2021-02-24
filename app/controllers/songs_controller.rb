class SongsController < ApplicationController
    def show
        @song = Song.find_by(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        # byebug
        @song = Song.new(name: params[:song][:name], artist_id: params[:song][:artist_id], genre: params[:song][:genre_id])
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find_by(params[:id])
    end

    def update
        @song = Song.find_by(params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
end