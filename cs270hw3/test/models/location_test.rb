require 'test_helper'

class LocationTest < ActiveSupport::TestCase
    test 'can create new location' do
        Location.create(
            name: 'New Location',
            description: 'This is a new location.'
        )
        
        assert_not Location.all.empty?
    end
end