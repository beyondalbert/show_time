class CreateBasicInfos < ActiveRecord::Migration
  def change
    create_table :basic_infos do |t|
      t.string :name
      t.string :icp
      t.attachment :logo_square
      t.attachment :logo_rectangle
      t.attachment :wx_qr_code

      t.timestamps null: false
    end
  end
end
