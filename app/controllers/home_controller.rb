class HomeController < ApplicationController
  def index
  	@activities = Activity.order(:happen_time).last(3)
  	@last_activity = Activity.order(:happen_time).last
  end

  def about
  end

  def join
  end
end
