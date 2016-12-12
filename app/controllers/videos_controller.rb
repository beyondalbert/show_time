class VideosController < ApplicationController
  def index
    @videos = Video.all
    @video_cover = Picture.video_cover

    @parent_pages = Page.where(parent_id: nil)
    @page_hash = []
    @parent_pages.each do |pp|
      parent = {id: pp.id, title: pp.title, children: []}
      pp.children.each do |c|
        parent[:children] << {id: c.id, title: c.title}
      end
      @page_hash << parent
    end
  end
end
