class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
			t.string :title
      t.text :description
      t.integer :activity_type
      t.datetime :happen_time

      t.timestamps null: false
    end
  end
end
