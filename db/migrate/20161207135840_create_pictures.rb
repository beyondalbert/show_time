class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :description
      # 1: 为轮播图
      t.integer :pic_type

      t.timestamps null: false
    end
  end
end
