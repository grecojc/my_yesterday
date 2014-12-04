task :map_trends_to_tweets => :environment do

	tweets = Tweet.where("timestamp >= ? and timestamp < ?", Date.today.prev_day, Date.today)
	trends = Trend.where("created_at >= ? and created_at < ?", Date.today.prev_day, Date.today)

	num_tweets = tweets.count
	num_trends = trends.count

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