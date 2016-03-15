# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 2 events with name, description, start and end dates
Event.create(
    name:'Event 1',
    description: 'This is event 1',
    start_date: Date.today,
    end_date: Date.today + 7,
    )

Event.create(
    name: 'Event 2',
    description: 'Event 2',
    start_date: Date.today + 7,
    end_date: Date.today + 14,
    )
    
# Create 2 locations with name, description, tag, and coordinates
Location.create(
    name: 'Location 1',
    description: 'This is location 1',
    tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
    coordinates:'36.1095862,-115.1396639',
    )
    
Location.create(
    name: 'Location 2',
    description: 'This is location 2',
    tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
    coordinates:'36.105666,-115.143697',
    )

# Create 2 users with first_name, last_name, email
User.create(
    first_name: 'User',
    last_name: '1',
    email: 'user1@unlv.nevada.edu',
    )
    
User.create(
    first_name: 'User',
    last_name: '2',
    email: 'user2@unlv.nevada.edu',
    )
    
#collect data
user1 = User.find(1)
event1 = Event.find(1)
location1 = Location.find(1)
location2 = Location.find(2)

#user owns event1 and location 1 and 2
user1.owned_events << event1
user1.owned_locations << location1
user1.owned_locations << location2

#location 1 and 2 apart of event1
event1.locations << location1
event1.locations << location2

#user2 participates in event 1, visted location1
user2 = User.find(2)

user2.participating_events << event1
user2.visited_locations << location1
