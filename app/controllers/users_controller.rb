class UsersController < ApplicationController
    def show
        @name = current_user.name
        @rankings = current_user.rankings
        
    end




   
end