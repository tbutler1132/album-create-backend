class PollsController < ApplicationController
    def index
        polls = Poll.all
        
        render json: polls, except: [:updated_at, :created_at] 
    end

    def show
        poll = Poll.find(params[:id])
    
        render json: poll
    end

    def create
        poll = Poll.new(poll_params)
    
        if poll.save
          render json: poll
        else
          render json: {error: poll.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def poll_params
        params.require(:poll).permit(:user_id, :phase)
    end
end
