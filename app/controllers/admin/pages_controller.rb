class Admin::PagesController < AdminController
  before_filter :find_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def new
    @parent_pages = Page.where(parent_id: nil)
  end

  def create
    @page = Page.new(page_params)
    @page.save!

    redirect_to admin_pages_path, flash: {success: "自定义页面创建成功"}
  end
  
  def edit
    @parent_pages = Page.where(parent_id: nil)
  end

  def update
    @page.update!(page_params)

    redirect_to admin_pages_path, flash: {success: "自定义页面编辑成功"}
  end

  def destroy
    @page.destroy!

    redirect_to admin_pages_path, flash: {success: "自定义页面删成功"}
  end

  private
  def find_page
    @page = Page.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def page_params
    params.require(:page).permit(:title, :desc, :parent_id)
  end
end
