class CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index
        comments = Comment.all
        
        render json: comments, except: [:updated_at, :created_at] 
    end

    def show
        comment = Comment.find(params[:id])
    
        render json: comment
    end

    def create
        comment = Comment.new(comment_params)
    
        if comment.save
          render json: comment
        else
          render json: {error: comment.errors.full_messages}, status: :not_acceptable
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:user_id, :comment_thread_id, :song_id, :content)
    end
end
