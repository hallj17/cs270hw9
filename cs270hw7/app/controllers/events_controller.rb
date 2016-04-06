class EventsController < ApplicationController
    # GET /events/new
    def new_event
    end
    
    # POST /events/create
    # params name, description, start date, end date
    def create_event
        @event = Event.new(
            name: params[:name],
            description: params[:description],
            start_date: params[:start_date],
            end_date: params[:end_date] , 
        )
        
        if @event.save show_event_path
             redirect_to show_event_path
         else 
             redirect_to root_path
        end


    end
    
    
    
    # GET /events
    def show_all_events
        @events = Event.all
    end
    
    # GET /events/:id
    def show_event
        @event = Event.find(params[:id])
    end
    
    # GET /events/:id/edit
    def edit_event
        #get the right event by id
        @event = Event.find(params[:id])
    end
    
    # POST /events/update
    def update_event
       @event = Event.update 
    end    
    
    
    # DELETE /events/:id
    def delete_event
    end
end