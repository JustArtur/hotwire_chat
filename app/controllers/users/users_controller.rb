class UsersController < Devise::SessionsController  
    def show
        @user = current_user
    end        
end
