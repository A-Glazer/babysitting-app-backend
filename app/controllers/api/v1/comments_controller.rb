class API::V1::CommentsController < ApplicationController
    
    before_action :set_babysitter

    def index
      @comments = @babysitter.comments
      render json: @comments
    end

    def create
       
    end

    def show
       
    end

    def destroy 
       
    end

    private

    def set_babysitter
        @babysitter = Babysitter.find(params[:babysitter_id])
    end

    def comment_params
        params.require(:comment).permit(:babysitter_id, :message, :name)
    end

end
