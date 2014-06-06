class TopicsController < ApplicationController
	def show
		@current_topic = Topic.where(name: params[:topic_name])[0]
		@posts = filter_posts_with_current_topic Post.all, @current_topic
	end

	private

	def filter_posts_with_current_topic(posts, topic)
		posts.select{|post| post.topic == topic}
	end
end
