class HomeController < ApplicationController
  before_filter :find_pages

  def index
  	@activities = Activity.order(:happen_time).last(3)
  	@last_activity = Activity.order(:happen_time).last

    @videos = Video.last(3)

    @pictures = Picture.where(pic_type: 1).last(5)

    @business_cover = Picture.business_cover
  end

  def about
    @about_us_cover = Picture.about_us_cover
  end

  def join
    @jobs = Job.where(status: 1)
    @join_us_cover = Picture.join_us_cover
  end

  private
  def find_pages
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
