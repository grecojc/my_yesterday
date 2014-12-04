class TrendsController < ApplicationController
	def index
		@trends = Trend.all
	end
	def show
		@trend = Trend.find(params[:id])
	end
end
