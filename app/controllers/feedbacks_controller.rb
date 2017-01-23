class FeedbacksController < ApplicationController
  before_filter :find_pages, :find_basic_info

  def new
  end

  def create
    @feedback = Feedback.new feedback_params

    @feedback.save!

    redirect_to root_path, flash: {success: "反馈提交成功！"}
  rescue ActiveRecord::RecordInvalid
    error_msgs = ''

    @feedback.errors.full_messages.each do |m|
      error_msgs += m
    end

    redirect_to new_feedback_path, flash: {alert: error_msgs}
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :phone, :content)
  end

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
