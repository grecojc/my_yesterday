class NewsSourcesController < ApplicationController
  def index
  	@newssources = NewsSource.all
  end
end
