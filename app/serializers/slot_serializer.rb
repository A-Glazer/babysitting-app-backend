class SlotSerializer < ActiveModel::Serializer
  attributes :id, :day_of_week, :time_of_day, :babysitter_id
end
