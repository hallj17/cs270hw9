class Participate < ActiveRecord::Base
    has_and_belongs_to_many :event
    has_and_belongs_to_many :user
end