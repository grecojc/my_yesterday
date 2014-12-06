task :map_trends_to_tweets => :environment do

	tweets = Tweet.where("timestamp >= ? and timestamp < ?", DateTime.now.in_time_zone("EST").to_date.prev_day, DateTime.now.in_time_zone("EST").to_date)
	trends = Trend.where("created_at >= ? and created_at < ?", DateTime.now.in_time_zone("EST").to_date.prev_day, DateTime.now.in_time_zone("EST").to_date)

	num_tweets = tweets.count
	num_trends = trends.count

	x = 0
	y = 0
	while x < num_tweets
		current_tweet = tweets[x]
		current_trend = trends[y]
		if current_tweet.text.downcase.include? current_trend.name.downcase
		current_tweet.trends << current_trend unless current_tweet.trends.include?(current_trend)
		current_tweet.save
		end
		
		y += 1
		if y == (num_trends)
		x += 1
		y = 0
		end
	end
end