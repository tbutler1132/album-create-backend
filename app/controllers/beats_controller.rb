class BeatsController < ApplicationController
    def index
        beats = Beat.all
        
        render json: beats, except: [:updated_at, :created_at] 
    end

    def show
        beat = Beat.find(params[:id])
    
        render json: beat
    end
end
