class Admin::BasicInfosController < AdminController
  def update
    @basic_info = BasicInfo.find(params[:id])
    @basic_info.update!(basic_info_params)

    redirect_to '/admin/dashboard/index', flash: {success: '更新成功！'} 
  end

  def delete_pic
    @basic_info = BasicInfo.find(params[:id])
    case params[:target]
    when 'logo_square'
      @basic_info.logo_square = nil
    when 'logo_rectangle'
      @basic_info.logo_rectangle = nil
    when 'wx_qr_code'
      @basic_info.wx_qr_code = nil
    end
    @basic_info.save!
    redirect_to '/admin/dashboard/index', flash: {success: '更新成功！'} 
  end

  private
  def basic_info_params
    params.require(:basic_info).permit(:name, :icp, :logo_square, :logo_rectangle, :wx_qr_code)
  end
end
