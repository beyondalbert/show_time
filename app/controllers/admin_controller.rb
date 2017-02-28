class AdminController < ApplicationController
	layout 'admin'
	before_filter :require_admin
  before_filter :find_basic_info

  private
  def find_basic_info
    @basic_info = BasicInfo.first
  end
end
