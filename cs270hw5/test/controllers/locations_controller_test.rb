require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
    test 'can view all locations' do
        get '/locations'
        assert_response :success
    end
    
    test 'can view a single location' do
        get '/locations/1'
        assert_response :success
    end
    
    test 'can edit a single location' do
        post '/locations/1/edit'
        assert_response :success
    end
    
    test 'can delete an location' do
        delete '/locations/1/delete'
        assert_response :success
    end
end