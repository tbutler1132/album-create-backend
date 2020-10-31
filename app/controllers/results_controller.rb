class ResultsController < ApplicationController
    def index
        results = Result.all
        
        render json: results, except: [:updated_at, :created_at] 
    end
end
