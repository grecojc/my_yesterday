class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", DateTime.now.in_time_zone("EST").to_date.prev_day, DateTime.now.in_time_zone("EST").to_date)
		@date = DateTime.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
	end
end
