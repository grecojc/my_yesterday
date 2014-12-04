class Tweet < ActiveRecord::Base
	belongs_to :new_source
	has_many :trends 
end
