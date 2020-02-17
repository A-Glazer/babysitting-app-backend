class Comment < ApplicationRecord
    belongs_to :babysitter

    validates :message, presence: true
end
