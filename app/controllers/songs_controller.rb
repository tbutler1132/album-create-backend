class SongsController < ApplicationController
    def index
        songs = Song.all

        render json: songs, except: [:updated_at, :created_at]
    end

    def show
        song = Song.find(params[:id])
    
        render json: song
    end
end
