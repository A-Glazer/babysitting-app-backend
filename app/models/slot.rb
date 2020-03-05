class Slot < ApplicationRecord
    enum week: [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
    enum time: [:morning, :afternoon, :evening]

    belongs_to :babysitter

    # validates :day_of_week, uniqueness: { scope: :time_of_day,
    #     message: "day and time already exists"} 


    # def slot_exist(params)
    #     if (@babysitter.slots.where(day_of_week: params["day_of_week"].to_i, time_of_day: params["time_of_day"].to_i))
    #         render json: @babysitter
    #     end
    # end
end

# class MyValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.name.starts_with? 'X'
#         record.errors[:name] << 'Need a name starting with X please!'
#       end
#     end
#   end
   
#   class Person
#     include ActiveModel::Validations
#     validates_with MyValidator
#   end

