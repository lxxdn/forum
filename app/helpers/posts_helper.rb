module PostsHelper
	# 
	# this function takes a url and returns 
	# a hash table of params
	# 
	def get_url_params(url)
		regex = Regexp.new("[\\?\\&]([\\w\\d]*?=[^\\?\\&]*)")
		parameters = Hash.new

		match_data = url.scan regex
		match_data.each do |str|
			key,value = str[0].split('=')
			parameters[key] = value
		end

		parameters #return parameters
	end

	#
	# [a,b,c,d] => [[a,0],[b,1],[c,2],[d,3]] for option_for_select
	#
	def generate_nested_topics(topics)
		nested_array = []
		topics.each_with_index do |topic, index|
			nested_array << [topic.name, index]	
		end
		nested_array
	end

	def get_catalog_index(catalog)
		Catalog.all.find_index catalog
	end

	def belongs_to_current_catalog?(post, current_catalog_index)
		catalog = post.topic.catalog
		current_catalog_index == get_catalog_index(catalog)
	end

	def filter_posts_with_current_catalog(posts)
		posts.select{|post| belongs_to_current_catalog?(post, params[:catalog].to_i)}
	end

end
