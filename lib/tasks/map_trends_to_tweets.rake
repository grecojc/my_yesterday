task :map_trends_to_tweets => :environment do

	tweets = Tweet.where("timestamp >= ?", (Time.now.ago(5 * 60 * 60).to_date.to_time.advance :hours => 5))
	trends = Trend.where("created_at >= ?", (Time.now.ago(5 * 60 * 60).to_date.to_time.advance :hours => 5))

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