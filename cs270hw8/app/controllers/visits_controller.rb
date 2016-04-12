class VisitsController < ApplicationController
    #new visit
    def new_visit
        @location = Location.find_by(tag: params[:tag])
    end
    
    
    #create visit
    def create_visit
        @location = Location.find_by(tag: params[:tag])
        @user = User.find_by(email: params[:email] 
        )
    
    #@user.visited_locations << @location, with redirect    
         @user.visited_locations << @location
         redirect_to show_user_path(@user)
      
    end
       
end