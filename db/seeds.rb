# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# babysitters:
Hanna = Babysitter.create(first_name: "Hanna", last_name: "May", phone_number: "274-698-2514") 
Carol = Babysitter.create(first_name: "Carol", last_name: "Smith", phone_number: "578-852-5646")
Dora = Babysitter.create(first_name: "Dora", last_name: "Ambermill", phone_number: "212-565-4545") 

# Comments
comment1b = Comment.create(babysitter_id: 2, message: "Carol is awesome!", name: "Margie")
comment2a = Comment.create(babysitter_id: 1, message: "Hanna was very good with kids. I highly recommend her")
comment3b = Comment.create(babysitter_id: 2, message: "Carol is very sweet and punctual", name: "Kelly" )
comment4c = Comment.create(babysitter_id: 3, message: "Dora came late, but was good with my kids", name: "Laura" )

# Slots
HannaMonMorn = Slot.create(babysitter_id: 1, day_of_week: 1, time_of_day: 0)
HannaTueMorn = Slot.create(babysitter_id: 1, day_of_week: 2, time_of_day: 0)
HannaWedMorn = Slot.create(babysitter_id: 1, day_of_week: 3, time_of_day: 0)
HannaWedNt = Slot.create(babysitter_id: 1, day_of_week: 3, time_of_day: 2)
HannaThurMorn = Slot.create(babysitter_id: 1, day_of_week: 4, time_of_day: 0)
HannaFriAft = Slot.create(babysitter_id: 1, day_of_week: 5, time_of_day: 1)
HannaSatNt = Slot.create(babysitter_id: 1, day_of_week: 6, time_of_day: 2)

CarolSunMorn = Slot.create(babysitter_id: 2, day_of_week: 0, time_of_day: 0)
CarolSunAft = Slot.create(babysitter_id: 2, day_of_week: 0, time_of_day: 1)
CarolSunNt = Slot.create(babysitter_id: 2, day_of_week: 0, time_of_day: 2)

DoraSunNt = Slot.create(babysitter_id: 3, day_of_week: 0, time_of_day: 2)
DoraMonNt = Slot.create(babysitter_id: 3, day_of_week: 1, time_of_day: 2)
DoraTueMorn = Slot.create(babysitter_id: 3, day_of_week: 2, time_of_day: 0)
DoraSatNt = Slot.create(babysitter_id: 3, day_of_week: 6, time_of_day: 2)