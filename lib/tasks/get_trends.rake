task :get_trends => :environment do
	
	all_trends = $twitter.trends(id = 23424977).each.to_a

	x = 0
	while x < 10
		trend_name = all_trends[x].name
		trend_create = true
		if Trend.exists?(:name => trend_name)
			existing_trends = Trend.where name: trend_name
			y = 0
			num_existing_trends = existing_trends.count
				while y < num_existing_trends
					if existing_trends[y].created_at.in_time_zone("EST").to_date == DateTime.now.in_time_zone("EST").to_date
					trend_create = false
					end
					y += 1
				end
		end
		unless trend_create == false
		Trend.create(:name => all_trends[x].name)
		end
		x += 1
	end
end

