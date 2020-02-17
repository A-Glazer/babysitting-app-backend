class Babysitter < ApplicationRecord
    has_many: :comments

    validates :first_name, :last_name, :phone_number, presence: true
end
