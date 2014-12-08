class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", Time.now.to_date.prev_day.ago(5 * 60 * 60), 5.hours.ago)
		@date = Time.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
		@newssources = NewsSource.all
	end
end
