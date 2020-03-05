class Api::V1::SlotsController < ApplicationController
    before_action :set_babysitter

    def index
      @slots = @babysitter.slots
      render json: @slots
    end

    def create
        # binding.pry
        # if (@babysitter.slots.where(day_of_week: params["day_of_week"].to_i, time_of_day: params["time_of_day"].to_i))
            # render json: @babysitter
            # binding.pry
        # else
        # slot_exist(params)
            @slot = @babysitter.slots.new(slot_params)
            @slot.save
            render json: @babysitter
        # end
    end

    def show
        # binding.pry
       @slot = @babysitter.slots.find_by(id: params[:id])
       render json: @slot
    end

    def destroy 
        # binding.pry
        # babysitter.slots.find(array => array.day_of_week === slot.day_of_week)
        @slot = @babysitter.slots.find_by(id: params[:id])
        @slot.destroy
        render json: @slot
    end

    private

    def set_babysitter
        @babysitter = Babysitter.find(params[:babysitter_id])
    end

    def slot_params
        params.require(:slot).permit(:babysitter_id, :day_of_week, :time_of_day)
    end
end
