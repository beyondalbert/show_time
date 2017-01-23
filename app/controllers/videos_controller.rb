class VideosController < ApplicationController
  before_filter :find_pages, :find_basic_info

  def index
    @videos = Video.all
    @video_cover = Picture.video_cover
  end
end
