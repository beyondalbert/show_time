class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :desc
      t.integer :status, default: 1

      t.timestamps null: false
    end
  end
end
