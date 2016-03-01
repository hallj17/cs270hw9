class Event < ActiveRecord::Base
    has_and_belongs_to_many :locations
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    has_and_belongs_to_many :participants
end