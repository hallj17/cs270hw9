class User < ActiveRecord::Base
    has_many :visits
    has_many :visited_locations, through: :visits, source:'location'
    has_many :owned_locations, class_name: 'Location'
    has_many :owned_events, class_name: 'Event'
    has_and_belongs_to_many :participating_events
end