class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", Date.today, Time.now)
		@date = Date.today.prev_day.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
	end
end
