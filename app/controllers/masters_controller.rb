class MastersController < ApplicationController
    def index
        masters = Master.all
        
        render json: masters, except: [:updated_at, :created_at] 
    end

    def show
        master = Master.find(params[:id])
    
        render json: master
    end

    def create
        master = Master.new(master_params)
    
        if master.save
          render json: master
        else
          render json: {error: master.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        master = Master.find(params[:id])
    
        master.update!(master_params)
    
        render json: master
    end

    private

    def master_params
        params.require(:master).permit(:selected, :user_id, :mix_id)
    end
end
