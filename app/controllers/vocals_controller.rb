class VocalsController < ApplicationController
    def index
        vocals = Vocal.all
        
        render json: vocals, except: [:updated_at, :created_at] 
    end

    def show
        vocal = Vocal.find(params[:id])
    
        render json: vocal
    end

    def create
        vocal = Vocal.new(vocal_params)
    
        if vocal.save
          render json: vocal
        else
          render json: {error: vocal.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        vocal = Vocal.find(params[:id])
    
        vocal.update!(vocal_params)
        audio_data_url = rails_blob_path(vocal.audio_data)
    
        render json: {vocal: vocal, audio_data_url: audio_data_url}
    end

    private

    def vocal_params
        params.require(:vocal).permit(:selected, :user_id, :beat_id, :audio_data)
    end

end
