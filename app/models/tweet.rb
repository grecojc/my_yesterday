class Tweet < ActiveRecord::Base
	belongs_to :news_source
	has_many :trends
end
