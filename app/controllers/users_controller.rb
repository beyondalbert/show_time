class UsersController < ApplicationController
  layout 'login'

  def new
  	@user = User.new
  end

  def create
  	@user = User.new user_params
  	if @user.save
  		login_as @user, false
  		redirect_to root_url, flash: {success: "注册成功！"}
    else
      render 'new'
  	end
  end

  private
  def user_params
    params.require(:user).permit(:phone, :password, :password_confirmation)
  end
end
