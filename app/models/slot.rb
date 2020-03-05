class Slot < ApplicationRecord
    enum week: [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
    enum time: [:morning, :afternoon, :evening]

    belongs_to :babysitter

    # validate :time_and_date_exist

    # def time_and_date_exist
    #     # binding.pry
    #     if babysitter_id == params[:babysitter_id] && day_of_week == params[:day_of_week] && time_of_day == params[:time_of_day] 
    #         errors.add(:time_of_day, "already exists")
    #         # binding.pry
    #     end
    # end

    # validates :day_of_week, uniqueness: { scope: :time_of_day,
    #     message: "day and time already exists"} 


    # def slot_exist(params)
    #     if (@babysitter.slots.where(day_of_week: params["day_of_week"].to_i, time_of_day: params["time_of_day"].to_i))
    #         render json: @babysitter
    #     end
    # end
end

