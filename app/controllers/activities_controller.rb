class ActivitiesController < ApplicationController
  before_filter :find_pages, :find_basic_info

  def index
    @activities = Activity.all
    @activity_cover = Picture.activity_cover
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
