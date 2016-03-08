require 'test_helper'

class EventsControllerTest < ActionController::TestCase
    test 'can view all events' do
        get '/events'
        assert_response :success
    end
    
    test 'can view a single event' do
        get '/events/1'
        assert_response :success
    end
    
    test 'can edit a single event' do
        post '/events/1/edit'
        assert_response :success
    end
    
    test 'can delete an event' do
        delete '/events/1/delete'
        assert_response :success
    end
end