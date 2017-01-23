class Admin::DashboardController < AdminController
  def index
    @basic_info = BasicInfo.first
    p @basic_info.wx_qr_code.exists?
    p @basic_info.wx_qr_code.url
  end
end
