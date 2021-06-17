class UsersController < ApplicationController

    def index
        @users = User.all
       
    end
    
    def show
       
        @user = User.find(params[:id])

        @user.dob = @user.dob.to_s.unpack('A4xA2xA2').rotate.join('/')
    end

    def apps

       
    end

end