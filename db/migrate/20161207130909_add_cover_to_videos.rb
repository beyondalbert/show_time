class AddCoverToVideos < ActiveRecord::Migration
  def change
  	add_attachment :videos, :cover
  end
end
