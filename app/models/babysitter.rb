class Babysitter < ApplicationRecord
    has_many: :comments
    has_many: :slots

    validates :first_name, :last_name, :phone_number, presence: true
    
end
