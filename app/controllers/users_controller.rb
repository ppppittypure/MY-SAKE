class UsersController < ApplicationController
    def show
        @name = current_user.name
        #@rankings = current_user.rankings
    end




    #private

    #def sake_params
    #params.require(:sakes).permit(:title, :text, :evaluation, :image).merge(user_id: current_user.id)
    #end
end