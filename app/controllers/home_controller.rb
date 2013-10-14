class HomeController < ApplicationController
  def index
  	@all_posts = Post.all
  	render action: "index", catalog: "0"
  end
end
