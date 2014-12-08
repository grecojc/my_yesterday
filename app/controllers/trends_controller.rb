class TrendsController < ApplicationController
	def index
		@trends = Trend.all.limit(10)
		@date = DateTime.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
		@newssources = NewsSource.all
	end
end
