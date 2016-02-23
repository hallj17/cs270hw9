require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test 'can create new user' do
        User.create(
            first_name: 'New',
            last_name: 'User',
            email: 'new@user.com'
        )
        
        assert_not User.all.empty?
    end
end