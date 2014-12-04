task :get_trends => :environment do
	
	all_trends = $twitter.trends(id = 23424977).each.to_a

	x = 0
	while x < 10
		trend_name = all_trends[x].name
		if Trend.exists?(:name => trend_name)
		existing_trend = Trend.find_by name: trend_name
			if existing_trend.created_at.to_date.in_time_zone("UTC") == Time.now.to_date.in_time_zone("UTC")
			trend_create = false
			end
		end
		unless trend_create == false
		Trend.create(:name => all_trends[x].name)
		end
		x += 1
	end
end

