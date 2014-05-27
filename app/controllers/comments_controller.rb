class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:comment][:post])
    @content = params[:comment][:content]
  	@comment_author = User.find(params[:comment][:author])
  	@comment = @post.comments.build(content: @content, author: @comment_author, content_html: markdown(@content))
  	@comment.save

  	redirect_to(post_path(@post))
  end

  # def edit
  # 	@comment = Comment.find(params[:id])
  # end

  def update
  	@comment = Comment.find(params[:id])
  	@post = @comment.post
  	@content = params[:comment][:content]
  	@comment.update_attributes!(content: @content, content_html:markdown(@content))
  	redirect_to post_path(@post)
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@post = @comment.post
  	@comment.destroy
  	redirect_to post_path(@post)
  end
end
