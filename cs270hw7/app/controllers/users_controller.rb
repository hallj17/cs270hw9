class UsersController < ApplicationController
    # GET /users/new
    def new_user
    end

    # POST /users/create
    def create_user
        @user = User.new(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password],
        )
        
        if @user.save show_user_path
            redirect_to (@user)
        else
            redirect_to root_path
        end
    
    end
    
    
    # GET /users
    def show_all_users
        @users = User.all
    end
    
    # GET /users/:id
    def show_user
    end
    
    # GET /users/:id/edit
    def edit_user
        @users = User.find(params[:id])
    end
    
    # DELETE /users/:id
    def delete_user
    end
end