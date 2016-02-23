require 'test_helper'

class EventTest < ActiveSupport::TestCase
    test 'can create new event' do
        Event.create(
            name: 'New Event',
            description: 'This is a new event.',
            start_date: Date.today,
            end_date: Date.today + 14
        )
        
        assert_not Event.all.empty?
    end
end