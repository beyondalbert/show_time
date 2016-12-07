class Admin::PicturesController < AdminController
  before_filter :find_picture, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.save!

    redirect_to admin_pictures_path, flash: {success: "图片创建成功"}
  end

  def edit
  end

  def update
    @picture.update!(picture_params)

    redirect_to admin_pictures_path, flash: {success: "图片编辑成功"}
  end

  def destroy
    @picture.destroy!
    redirect_to admin_pictures_path, flash: {success: "图片删除成功"}
  end

  private
  def find_picture
    @picture = Picture.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def picture_params
    params.require(:picture).permit(:title, :content, :description, :pic_type)
  end
end
