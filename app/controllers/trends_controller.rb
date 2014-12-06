class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ? and created_at < ?", Date.today.prev_day, Date.today)
		@date = Date.today.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
	end
end
