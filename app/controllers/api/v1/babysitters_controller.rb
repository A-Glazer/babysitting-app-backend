class API::V1::BabysittersController < ApplicationController

    def index
        @babysitters = Babysitter.all
        render json: @babysitters
    end

    def create
        @babysitter = Babysitter.new(babysitter_params)
        if @babysitter.save
            render json: @babysitter
        else
            render json: {error: "Error creating a new babysitter"}
        end
    end

    def show

    end

    def destroy 

    end

    private

    def babysitter_params
        params.require(:babysitter).permit(:first_name, :last_name, :phone_number)
    end
end
