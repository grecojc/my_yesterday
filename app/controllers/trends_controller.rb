class TrendsController < ApplicationController
	def index
		@trends = Trend.all
		@date = Date.today.prev_day.strftime('%a' ' ' '%B' ' ' '%d' ' ' '%Y')
	end
end
