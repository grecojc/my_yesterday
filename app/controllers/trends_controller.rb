class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", DateTime.now.prev_day, DateTime.now)
		@date = DateTime.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
	end
end
