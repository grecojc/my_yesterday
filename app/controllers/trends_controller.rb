class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ?", (Time.now.ago(5 * 60 * 60).to_date.prev_day.to_time.advance :hours => 5))
		@date = Time.now.in_time_zone("EST").to_date.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
		@newssources = NewsSource.all
	end
end
