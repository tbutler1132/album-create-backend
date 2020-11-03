class ResultsController < ApplicationController
    def index
        results = Result.all
        
        render json: results, except: [:updated_at, :created_at] 
    end

    def create
        result = Result.new(result_params)
    
        if result.save
          render json: result
        else
          render json: {error: result.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def result_params
        params.require(:result).permit(:win, :winnable_id, :winnable_type, :poll_id)
    end
end
