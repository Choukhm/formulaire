class UsersController < ApplicationController

	#pour le formulaire html <form>
    def new_form
  		@user = User.new
    end

    def new_form_tag
    	@user = User.new
    end 

    def new_form_for
    	@user = User.new
    end 

    def create
    	@user = User.new
		@user.username = params[:username]
		@user.email = params[:email]
		@user.bio = params[:bio]

        if @user.save
            redirect_to home_path
        else
            redirect_to "/users/error"
        end
    end
end
