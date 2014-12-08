class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", DateTime.now.in_time_zone("EST").to_date, Time.now.in_time_zone("EST"))
		@date = Time.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
		@newssources = NewsSource.all
	end
end
