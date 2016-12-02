class AdminController < ApplicationController
  layout 'admin'
  before_filter :require_admin

  private
  def require_admin
  end
end
