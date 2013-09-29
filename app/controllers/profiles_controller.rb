class ProfilesController < ApplicationController
	def edit
		@user = User.find(params[:id])
	end

	def update
  	@user = current_user
    @user.image_url = params[:profile][:image_url]
    @user.name = params[:profile][:name]
    @user.save!
    puts "***************"
    puts @user.image_url.url
    puts "***************"
    render "edit"
  end

end
