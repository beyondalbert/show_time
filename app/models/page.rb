class Page < ActiveRecord::Base
  def parent
    if self.parent_id
      Page.find(self.parent_id)
    else
      nil
    end
  end

  def children
    unless self.parent_id
      Page.where(parent_id: self.id)
    else
      []
    end
  end
end
