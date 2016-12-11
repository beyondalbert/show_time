class HomeController < ApplicationController
  def index
  	@activities = Activity.order(:happen_time).last(3)
  	@last_activity = Activity.order(:happen_time).last

    @videos = Video.last(3)

    @pictures = Picture.where(pic_type: 1).last(5)
  end

  def about
    @about_us_cover = Picture.about_us_cover
  end

  def join
    @jobs = Job.where(status: 1)
    @join_us_cover = Picture.join_us_cover
  end
end
