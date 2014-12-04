class TrendsController < ApplicationController
	def index
		@trends = Trend.all
		@trend = Trend.first
		@tweets = @trend.tweets
	end
	def show
		@trend = Trend.find(params[:id])
		@tweets = @trend.tweets
	end
end
