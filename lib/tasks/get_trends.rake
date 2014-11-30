task :get_trends => :environment do
	
$twitter.trends(id = 23424977).each.to_a

x = 0
while x < 10
Trend.create(:name => all_trends[x].name)
x += 1
end

end