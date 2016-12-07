class Admin::VideosController < AdminController
  before_filter :find_video, only: [:edit, :update, :destroy]
  def index
    @videos = Video.all
  end

  def new
  end

  def create
    @video = Video.new(video_params)
    @video.save!
    redirect_to admin_videos_path, flash: {success: "精彩视频创建成功"}
  end

  def edit
  end

  def update
    @video.update!(video_params)
    redirect_to admin_videos_path, flash: {success: "精彩视频更新成功"}
  end

  def destroy
    @video.destroy!
    redirect_to admin_videos_path, flash: {success: "精彩视频删除成功"}
  end

  private
  def find_video
    @video = Video.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def video_params
    params.require(:video).permit(:title, :cover, :url)
  end
end
