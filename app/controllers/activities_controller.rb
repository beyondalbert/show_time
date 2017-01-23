class ActivitiesController < ApplicationController
  before_filter :find_pages

  def index
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
