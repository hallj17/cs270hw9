require 'test_helper'

class UsersControllerTest < ActionController::TestCase
    test 'can view all users' do
        get '/users'
        assert_response :success
    end
    
    test 'can view a single user' do
        get '/users/1'
        assert_response :success
    end
    
    test 'can edit a single user' do
        post '/users/1/edit'
        assert_response :success
    end
    
    test 'can delete an user' do
        delete '/users/1/delete'
        assert_response :success
    end
end