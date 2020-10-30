class VocalsController < ApplicationController
    def index
        vocals = Vocal.all
        
        render json: vocals, except: [:updated_at, :created_at] 
    end

    def show
        vocal = Vocal.find(params[:id])
    
        render json: vocal
    end
end
