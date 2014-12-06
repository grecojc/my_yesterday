class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", DateTime.now.in_time_zone("EST").to_date, Time.now.in_time_zone("EST"))
		@date = DateTime.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
		@trends_yesterday = Trend.where("created_at >= ? and created_at < ?", DateTime.now.in_time_zone("EST").to_date.prev_day, DateTime.now.in_time_zone("EST").to_date)
	end
end
