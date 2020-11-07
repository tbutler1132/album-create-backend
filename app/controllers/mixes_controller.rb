class MixesController < ApplicationController
    def index
        mixes = Mix.all
        
        render json: mixes, except: [:updated_at, :created_at] 
    end

    def show
        mix = Mix.find(params[:id])
    
        render json: mix
    end
    
    def create
        mix = Mix.new(mix_params)
    
        if mix.save
          render json: mix
        else
          render json: {error: mix.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        mix = Mix.find(params[:id])
    
        mix.update!(mix_params)
    
        render json: mix
    end

    private

    def mix_params
        params.require(:mix).permit(:selected, :user_id, :vocal_id)
    end
end
