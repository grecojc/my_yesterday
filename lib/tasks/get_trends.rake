task :get_trends => :environment do
	
	all_trends = $twitter.trends(id = 23424977).each.to_a

	x = 0
	while x < 10
		if Trend.exists?(:name => all_trends[x].name)
		created_at = all_trends[x].created_at.to_date.in_time_zone("UTC")
			if created_at = Time.now.to_date.in_time_zone("UTC")
			trend_create = false
			end
		end
		unless trend_create == false
		Trend.create(:name => all_trends[x].name)
		end
		x += 1
	end
end

