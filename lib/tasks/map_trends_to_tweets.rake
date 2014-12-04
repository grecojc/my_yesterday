task :map_trends_to_tweets => :environment do

	tweets = Tweet.where("timestamp >= ? and timestamp < ?", Date.today, Time.now)
	trends = Trend.where("created_at >= ? and created_at < ?", Date.today, Time.now)

	num_tweets = tweets.count
	num_trends = trends.count

	x = 0
	y = 0
	while x < num_tweets
		current_tweet = tweets[x]
		current_trend = trends[y]
		if current_tweet.text.downcase.include? current_trend.name.downcase
		current_tweet.trends << current_trend
		current_tweet.save
		end
		y += 1
		if y == (num_trends)
		x += 1
		y = 0
		end
	end
end