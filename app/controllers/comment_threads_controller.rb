class CommentThreadsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index
        comment_threads = CommentThread.all
        
        render json: comment_threads, except: [:updated_at, :created_at] 
    end

    def show
        comment_thread = CommentThread.find(params[:id])
    
        render json: comment_thread
    end


    private

    def comment_params
        params.require(:comment).permit(:song_id, :title)
    end
end
