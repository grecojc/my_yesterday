task :map_trends_to_tweets => :environment do

	tweets = Tweet.all
	trends = Trend.all

	num_tweets = Tweet.count
	num_trends = Trend.count

	x = 0
	y = 0
	while x < num_tweets
		unless TrendTweet.exists?(:tweet_id => tweets[x].id, :trend_id => trends[y].id) 
		if tweets[x].text.downcase.include? trends[y].name.downcase
		TrendTweet.create(:tweet_id => tweets[x].id, :trend_id => trends[y].id)
		end
		end
		y += 1
		if y == (num_trends)
		x += 1
		y = 0
		end
	end
end