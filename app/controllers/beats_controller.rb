class BeatsController < ApplicationController
    def index
        beats = Beat.all
        
        render json: beats, except: [:updated_at, :created_at] 
    end

    def show
        beat = Beat.find(params[:id])
    
        render json: beat
    end

    def create
        beat = Beat.new(beat_params)
    
        if beat.save
          render json: beat
        else
          render json: {error: beat.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        beat = Beat.find(params[:id])
    
        beat.update!(beat_params)
        audio_data_url = rails_blob_path(beat.audio_data)

        render json: {beat: beat, audio_data_url: audio_data_url}
    end

    private

    def beat_params
        params.require(:beat).permit(:bpm, :key_sig, :selected, :audio, :user_id, :song_id, :audio_data)
    end
end
