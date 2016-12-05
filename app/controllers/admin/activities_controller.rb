class Admin::ActivitiesController < AdminController
  def index
  	@activities = Activity.all
  end

  def new
  end

  def create
  	@activity = Activity.new(activity_params)
  	@activity.save!
  	redirect_to admin_activities_path, flash: {success: "新闻创建成功！"}
  end

  def show
  	@activity = Activity.find(params[:id])
  end

  def edit
  	@activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update!(activity_params)
    redirect_to admin_activities_path, flash: {success: "新闻更新成功！"}
  end

  private
  def activity_params
  	params.require(:activity).permit(:title, :description, :news_type, :picture, :happen_time)
  end
end
