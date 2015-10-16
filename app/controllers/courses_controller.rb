class CoursesController < ApplicationController
  def index
  	@search_term=params[:looking_for] ||'jhu' #if there's a param named looking_for, otherwise we'll default to jhu
  	@courses=Coursera.for (@search_term)
  end
end
