class PostsController < ApplicationController
	before_action :require_login

  def new
  	@post = Post.new
    @action = "New"
  end

  def create
  	@title = params[:post][:title]
    @content = params[:post][:content]
    @topic = Topic.find(params[:post][:topic_id])
  	@post = current_user.posts.build(title: @title, content: @content, topic: @topic, content_html: markdown(@content))
  	@post.save
  	redirect_to post_path(@post)
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
    @topic_id = Topic.all.find_index(@post.topic)
    @action = "Edit"
    render 'new'
  end

  def update
    @title = params[:post][:title]
    @content = params[:post][:content]
    @topic = Topic.all[params[:post][:topic_id].to_i]
    @post = Post.find(params[:id])
    @post.update_attributes!(title: @title, content: @content, topic: @topic, content_html: markdown(@content))
    redirect_to post_path(@post)
  end

  def transform_markdown
    respond_to do |format|
      format.json do
        response = {data: markdown(params[:raw_markdown])}
        render json: response
      end
    end
  end

  private

  def require_login
  	unless user_signed_in?
  		flash[:error] = "You must be logged in to access this section"
  		redirect_to(new_user_session_path)
  	end
  end

end
