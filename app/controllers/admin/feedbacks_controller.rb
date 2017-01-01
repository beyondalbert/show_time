class Admin::FeedbacksController < AdminController
  def index
    @feedbacks = Feedback.all
  end
end
