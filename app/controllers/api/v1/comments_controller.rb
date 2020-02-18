class API::V1::CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: {error: "Error creating a new comment"}
        end
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy 
    end

    private

    def comment_params
        params.require(:comment).permit(:babysitter_id, :message, :name)
    end

end
