class Tweet < ActiveRecord::Base
	belongs_to :new_source
	belongs_to :trend
end
