class Slot < ApplicationRecord
    enum week: [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
    enum time: [:morning, :afternoon, :evening]

    belongs_to :babysitter
end
