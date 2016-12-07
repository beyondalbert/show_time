class AddContentToPictures < ActiveRecord::Migration
  def change
  	add_attachment :pictures, :content
  end
end
