class NewsSource < ActiveRecord::Base
	has_many :tweets
end
