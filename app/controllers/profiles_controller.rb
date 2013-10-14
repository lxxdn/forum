class ProfilesController < ApplicationController
	def edit
		@user = User.find(params[:id])
	end

	def update
  	@user = current_user
    @user.image = params[:profile][:image]
    @user.name = params[:profile][:name]
    @user.save!

    puts "***************"
    puts @user.image
    puts "***************"
    render "edit"
  end

end
