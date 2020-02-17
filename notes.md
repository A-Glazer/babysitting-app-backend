1. Babysitter
    a. has_many :comments
        has_many :slots
    b. attributes: 
        :first_name - string
        :last_name - string
        :phone_number - sting


2. Comments
    a. belongs_to :babysitter
    b. attributes:
        :babysitter_id - integer
        :message - sting
        :name -string

3. Slots
    a. belongs_to :babysitter
    b. attributes: 
        :babysitter_id - integer
        :day_of_week - integer
        :time_of_day - integer

