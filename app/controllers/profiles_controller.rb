class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

	def edit
    @user = User.find(params[:id])
	end

	def update
    current_user.image = params[:profile][:image]
    current_user.name = params[:profile][:name]
    current_user.save!
    @user = User.find(params[:id])
    render "edit"
  end
end
