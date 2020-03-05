class Api::V1::BabysittersController < ApplicationController

    before_action :find_babysitter, only: [:show, :destroy]

    def index
        # binding.pry
        @babysitters = Babysitter.all
        render json: @babysitters
    end

    def create
        # binding.pry
        @babysitter = Babysitter.new(babysitter_params)
        if @babysitter.save
            # binding.pry
            render json: @babysitter
        else
            render json: {error: "Error creating a new babysitter"}
        end
    end

    def show
        # binding.pry
        render json: @babysitter
    end

    def destroy 
        @babysitter.destroy 
    end

    private

    def find_babysitter
        @babysitter = Babysitter.find(params[:id])
    end

    def babysitter_params
        params.require(:babysitter).permit(:first_name, :last_name, :phone_number)
    end
end
