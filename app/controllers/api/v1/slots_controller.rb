class API::V1::SlotsController < ApplicationController
    def index
        @slots = Slot.all
        render json: @slots
    end

    def create
        @slot = Slot.new(slot_params)
        if @slot.save
            render json: @slot
        else
            render json: {error: "Error creating a new slot"}
        end
    end

    def show
        @slot = Slot.find(params[:id])
        render json: @slot
    end

    def destroy 
        @slot = Slot.find(params[:id])
        @slot.destroy 
    end

    private

    def slot_params
        params.require(:slot).permit(:babysitter_id, :day_of_week, :time_of_day)
    end
end
