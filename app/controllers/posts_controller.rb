class PostsController < ApplicationController
	before_action :require_login

  def new
  	@post = Post.new
  end

  def create
  	@title = params[:post][:title]
  	@content = params[:post][:content]
  	@post = current_user.posts.build(title: @title, content: @content)
  	@post.save
  	redirect_to root_path
  end

  def show
  	@post = Post.find(params[:id])
  	if @post.nil?
  		flash[:error] = "The post doesn't exist any more!"
  		redirect_to root_path
  	else
  		# if the post exists, load its comments
  		@comments =  @post.comments
  	end


  end

  def destroy
  end

  def edit
  end

  private

  def require_login
  	unless user_signed_in?
  		flash[:error] = "You must be logged in to access this section"
  		redirect_to(new_user_session_path)
  	end
  end

end
