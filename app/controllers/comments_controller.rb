class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:comment][:post])
  	@content = params[:comment][:content]
  	@comment_author = User.find(params[:comment][:author])

  	@comment = @post.comments.build(content: @content, author: @comment_author)
  	@comment.save

  	redirect_to(post_path(@post))
  end

  def edit
  end

  def destroy
  end
end
