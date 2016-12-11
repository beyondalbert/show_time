class Admin::JobsController < AdminController
  before_filter :find_job, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save!

    redirect_to admin_jobs_path, flash: {success: "招聘岗位创建成功"}
  end

  def edit
  end

  def update
    @job.update!(job_params)

    redirect_to admin_jobs_path, flash: {success: "招聘岗位编辑成功"}
  end

  def destroy
    @job.destroy!

    redirect_to admin_jobs_path, flash: {success: "招聘岗位删除成功"}
  end

  private
  def find_job
    @job = Job.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def job_params
    params.require(:job).permit(:title, :desc, :status)
  end
end
