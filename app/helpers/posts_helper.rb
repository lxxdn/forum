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
end
