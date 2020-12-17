class RefImgsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]
  
    def index
        refImgs = RefImg.all
        
        render json: refImgs, except: [:updated_at, :created_at] 
    end

    def create
        ref_img = RefImg.new(ref_img_params)
    
        if ref_img.save
          render json: ref_img
        else
          render json: {error: ref_img.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
      ref_img = RefImg.find(params[:id])
  
      ref_img.update!(ref_img_params)
  
      render json: ref_img
  end

    private

    def ref_img_params
        params.require(:ref_img).permit(:title, :img_url, :selected, :user_id, :song_id)
    end
end
