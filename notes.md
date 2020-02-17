1. Babysitter
    a. has_many :comments
    b. attributes: 
        :first_name - string
        :last_name - string
        :phone_number - sting
        :week_available - checkbox
        :time_available - checkbox


2. Comments
    a. belongs_to :babysitter
    b. attributes:
        :babysitter_id - integer
        :message - sting
        :name -string
        :date - datetime

