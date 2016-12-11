class VideosController < ApplicationController
  def index
    @videos = Video.all
    @video_cover = Picture.video_cover
  end
end
