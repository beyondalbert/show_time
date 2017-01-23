class PagesController < ApplicationController
  before_filter :find_pages, :find_basic_info

  def show
    @page = Page.find(params[:id])
  end
end
