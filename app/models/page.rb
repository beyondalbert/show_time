class Page < ActiveRecord::Base
  def parent
    if self.parent_id
      Page.find(self.parent_id)
    else
      nil
    end
  end
end
