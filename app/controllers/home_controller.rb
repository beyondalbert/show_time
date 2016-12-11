class HomeController < ApplicationController
  def index
  	@activities = Activity.order(:happen_time).last(3)
  	@last_activity = Activity.order(:happen_time).last

    @videos = Video.last(3)

    @pictures = Picture.last(5)
  end

  def about
  end

  def join
    @jobs = Job.where(status: 1)
  end
end
