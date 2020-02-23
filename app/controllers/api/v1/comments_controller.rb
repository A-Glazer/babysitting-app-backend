class Api::V1::CommentsController < ApplicationController
    
    before_action :set_babysitter

    def index
      @comments = @babysitter.comments
      render json: @comments
    end

    def create
       @comment = @babysitter.comments.build(comment_params)
       render json: @babysitter
    end

    def show
       @comment = @babysitter.comments.find_by(id: params[:id])
       render json: @comment
    end

    def destroy 
        @comment = @babysitter.comments.find_by(id: params[:id])
        @comment.destroy
    end

    private

    def set_babysitter
        @babysitter = Babysitter.find(params[:babysitter_id])
    end

    def comment_params
        params.require(:comment).permit(:babysitter_id, :message, :name)
    end

end
