class SongsController < ApplicationController
    def index
        songs = Song.all

        render json: songs, except: [:updated_at, :created_at]
    end

    def show
        song = Song.find(params[:id])
    
        render json: song
    end

    def update
        song = Song.find(params[:id])
    
        song.update!(song_params)
    
        render json: song
    end

    private

    def song_params
        params.require(:song).permit(:title, :placement, :phase, :album_id)
    end
end
