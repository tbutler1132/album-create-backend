class MixesController < ApplicationController
    def index
        mixes = Mix.all
        
        render json: mixes, except: [:updated_at, :created_at] 
    end

    def show
        mix = Mix.find(params[:id])
    
        render json: mix
    end
end
