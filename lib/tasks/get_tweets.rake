task :get_tweets => :environment do

	news_source_screen_names = []
	news_sources = NewsSource.all

	news_sources.each do |news_source|
		news_source_screen_names << news_source.screen_name
	end

	# num_screen_names = news_source_screen_names.count
	all_news_source_tweets = news_source_screen_names.map {|screen_name| $twitter.user_timeline(screen_name, count: 200)}

	x = 0
	y = 0
	while x < 200 and y < 10
		if all_news_source_tweets[y][x].nil? == false
			unless Tweet.exists?(:source => all_news_source_tweets[y][x].attrs[:id_str])
			Tweet.create(:screen_name => all_news_source_tweets[y][x].user.screen_name, :text => all_news_source_tweets[y][x].text, :timestamp => all_news_source_tweets[y][x].created_at, :source => all_news_source_tweets[y][x].attrs[:id_str], :url => all_news_source_tweets[y][x].urls[0].attrs[:url])
			end
		end
		x +=1
		if x == 199
			y += 1				
			x = 0
		end
	end
end