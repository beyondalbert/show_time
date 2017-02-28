class HomeController < ApplicationController
  before_filter :find_pages, :find_basic_info

  def index
  	@activities = Activity.order(:happen_time).last(3)
  	@last_activity = Activity.order(:happen_time).last

    @videos = Video.last(3)

    @pictures = Picture.where(pic_type: 1).last(5)

    @business_cover = Picture.business_cover

    @function_module_first = FunctionModule.find(1)
    @function_module_second = FunctionModule.find(2)
    @function_module_third = FunctionModule.find(3)
  end

  def about
    @about_us_cover = Picture.about_us_cover
  end

  def join
    @jobs = Job.where(status: 1)
    @join_us_cover = Picture.join_us_cover
  end

end
