class UsersController < ApplicationController
     def show
    @name = current_user.name
    @sakes = current_user.sakes
    end
end