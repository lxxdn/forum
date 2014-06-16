class ProfilesController < ApplicationController
  before_action :set_user

  def show
  end

	def edit
	end

	def update
    current_user.image = params[:profile][:image]
    current_user.name = params[:profile][:name]
    current_user.save!

    render "edit"
  end

  def set_user
    @user = User.find(params[:id])
  end

end
