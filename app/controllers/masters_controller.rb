class MastersController < ApplicationController
    def index
        masters = Master.all
        
        render json: masters, except: [:updated_at, :created_at] 
    end

    def show
        master = Master.find(params[:id])
    
        render json: master
    end
end
