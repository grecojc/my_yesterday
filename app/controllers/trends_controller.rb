class TrendsController < ApplicationController
	def index
		@trends = Trend.where("created_at >= ?", (Time.now.ago(5 * 60 * 60).to_date.to_time.advance :hours => 5))
		@date = Time.now.in_time_zone("EST").to_date.strftime('%A' ' ' '%B' ' ' '%m' ' ' '%Y')
		@newssources = NewsSource.all
	end

	def show
		@trend = Trend.find params[:id]
		@date = Time.now.in_time_zone("EST").to_date.strftime('%A' ' ' '%B' ' ' '%m' ' ' '%Y')
		@newssources = NewsSource.all
	end
end
