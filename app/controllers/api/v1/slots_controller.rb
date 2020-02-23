class Api::V1::SlotsController < ApplicationController
    before_action :set_babysitter

    def index
      @slots = @babysitter.slots
      render json: @slots
    end

    def create
       @slot = @babysitter.slots.build(slot_params)
       render json: @babysitter
    end

    def show
       @slot = @babysitter.slots.find_by(id: params[:id])
       render json: @slot
    end

    def destroy 
        @slot = @babysitter.slots.find_by(id: params[:id])
        @slot.destroy
    end

    private

    def set_babysitter
        @babysitter = Babysitter.find(params[:babysitter_id])
    end

    def slot_params
        params.require(:slot).permit(:babysitter_id, :day_of_week, :time_of_day)
    end
end
