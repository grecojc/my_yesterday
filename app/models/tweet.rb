class Tweet < ActiveRecord::Base
	belongs_to :news_source
	has_and_belongs_to_many :trends
end
