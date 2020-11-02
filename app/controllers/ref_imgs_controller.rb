class RefImgsController < ApplicationController
    def index
        refImgs = RefImg.all
        
        render json: refImgs, except: [:updated_at, :created_at] 
    end
end
