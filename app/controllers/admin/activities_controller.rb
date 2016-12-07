class Admin::ActivitiesController < AdminController
  before_filter :find_activity, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    @activity.update!(activity_params)
    redirect_to admin_activities_path, flash: {success: "新闻更新成功！"}
  end

  def destroy
    @activity.destroy!
    redirect_to admin_activities_path, flash: {success: "新闻删除成功！"}
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def activity_params
  	params.require(:activity).permit(:title, :description, :news_type, :picture, :happen_time)
  end
end
