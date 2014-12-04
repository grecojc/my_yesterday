task :get_trends => :environment do
	
	all_trends = $twitter.trends(id = 23424977).each.to_a

	x = 0
	while x < 10
		if Trend.exists?(:name => all_trends[x].name)
		created_at = all_trends[x].created_at.to_date.in_time_zone('UTC')
		end
		unless created_at == Time.now.to_date.in_time_zone('UTC')
		Trend.create(:name => all_trends[x].name)
		x += 1
		end

	end
end